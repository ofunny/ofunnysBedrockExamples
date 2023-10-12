#!/bin/bash
##########################################################################
#    Copyright (C) 2023, ofunny
#    Contact: https://ofunny.world/
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>
##########################################################################
#
# For additional guidance and helpful information, please refer to the README.
# Define the png file suffixes you are using for block face textures
#
# For example:
# 
# Base:  andesite_pillar.png
# Top:   andesite_pillar_top.png
# North: andesite_pillar_north.png
# West:  andesite_pillar_west.png
#
#
up_suffix="_top"
north_suffix="_north"
west_suffix="_west"


# Check if the input directory parameter is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

# Directory containing the PNG files
input_dir="$1"

# Directory to save the generated images to
output_dir="$2"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Create tmp directory if it doesn't exist
mkdir -p "tmp"

# Loop through each PNG file in the directory
for png_file in "$input_dir"/*.png; do

    # Extract the filename without extension
    filename=$(basename -- "$png_file")
    filename_noext="${filename%.*}"
    
    # Skip processing if the filename contains ${up_suffix}, ${north_suffix}, or ${west_suffix}
    case "$filename" in
       *${up_suffix}.png|*${north_suffix}.png|*${west_suffix}.png)
          continue
          ;;
    esac

    # Print the currently progressed image
    echo "Processing: $png_file"

    # Check for alternative images
    alternative_up="${input_dir}/${filename_noext}${up_suffix}.png"
    alternative_north="${input_dir}/${filename_noext}${north_suffix}.png"
    alternative_west="${input_dir}/${filename_noext}${west_suffix}.png"
    
    # Set texture variables based on alternative images or base image
    if [ -f "$alternative_up" ]; then
        top_texture="$alternative_up"
    else
        top_texture="$png_file"
    fi
    
    if [ -f "$alternative_north" ]; then
        north_texture="$alternative_north"
    else
        north_texture="$png_file"
    fi
    
    if [ -f "$alternative_west" ]; then
        west_texture="$alternative_west"
    else
        west_texture="$png_file"
    fi
    
    # Mirrow the top texture of the cube (do fit Minecrafts representation)
    convert "$top_texture" -flop tmp/tmp_top.png

    # Make north side slightly darker
    convert "$north_texture" -brightness-contrast -10x0 tmp/tmp_north.png

    # Make west side a 2 times darker version of left
    convert "$west_texture" -brightness-contrast -20x0 tmp/tmp_west.png
    
    # Create the isometric view as a 2D sprite with increased transparent border
    convert \
    \( tmp/tmp_top.png -resize 96x96! -alpha set -virtual-pixel transparent \
        +distort Affine '0,96 0,0   0,0 -34.8,-32  96,96 34.8,-32' \) \
    \( tmp/tmp_north.png -resize 96x96! -alpha set -virtual-pixel transparent \
        +distort Affine '96,0 0,0   0,0 -34.8,-32  96,96 0,64' \) \
    \( tmp/tmp_west.png -resize 96x96! -alpha set -virtual-pixel transparent \
        +distort Affine '  0,0 0,0   0,96 0,64    96,0 34.8,-32' \) \
    -background none -compose plus -layers merge +repage \
    -bordercolor transparent -border 4 \
    -resize 64x64! -gravity center -crop 64x64+0+0 \
    PNG8:"${output_dir}/${filename}"




done

# Remove tmporary files
rm tmp/tmp_top.png tmp/tmp_north.png tmp/tmp_west.png

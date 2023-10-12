# cubeSpriteGenerator
Generates a isometric view of a a cube as it would be displayed in the Minecraft inventory from a texture file.  
  
The script uses the "convert" tool what can be obtained by installing Imagemagick https://imagemagick.org/  
(including "convert" if asked while installing)  


## Usage
You can call the script via bash or shell  
  
bash ./convert.sh [input path to the directory with block textures] [output directory to save the generated sprites]  
  
e.g.   
  
bash ./convert.sh input/ output/  
  
(Has been tested in Linux, but will most likley also run on Windows within WSL)  
  

## Block sides
The script will read all png files within the input directory and convert them to an isometric view for each individual png file.
It will use the same texture for each side of the cube (up, west north) by default. But you can also define custom textures for each side.

To define custom textures per side, just create png files with the same name as the default texture and append a suffix like _top, _north, _west within the input directory.
You can also change the used suffixes within the script. 

### For example:
 
Base:  andesite_pillar.png  
Top:   andesite_pillar_top.png  
North: andesite_pillar_north.png  
West:  andesite_pillar_west.png  
  
  
Open the script and change the following lines to use alternative suffixes  
  
up_suffix="_top"  
north_suffix="_north"  
west_suffix="_west"  
  
# Custom Menu Background for Minecraft Inventories

This repository serves as a basic example of how to add a custom menu background to Minecraft Bedrock inventories. I follow the cleanest approach, by avoiding redundant code,  utilizing smart overwriting of JSON UI and employing modification strategies to inject the custom background panel.

## Introduction

Minecraft allows players to customize their in-game experience in various ways, and one way to do this is by adding custom backgrounds to inventory (chest) menus. This specific example was made for the "ItemsAdders" category and crafting menu. However, it can be adapted to fit any plugin's menu, as long as it starts with a color code "&" and contains a unique Unicode identifier.

# Try my example

To implement the custom menu background example in your Minecraft Bedrock pack, follow these simple steps:

1. **Download the Repository:**
   - Click the "Download" button or use the provided link to download the repository as a ZIP file.

2. **Extract the Files:**
   - Unzip the downloaded repository to access its contents.

3. **Copy UI and Texture Files:**
   - Inside the 'geysermc.chestBackgroundExample' directory, you'll find a UI folder and a texture folder. These contain the necessary JSON UI modification and the custom texture image.
   - Copy both the UI folder and the texture folder.

4. **Locate Your Resource Pack:**
   - Open your Minecraft Bedrock edition resource pack folder.

5. **Paste the Files:**
   - Paste the copied UI and texture folders into your resource pack. Make sure they are placed in the correct directory structure.
   - Merge the file properly, if "chest_screen.json" already exists in your resource pack.

6. **Activate the Resource Pack:**
   - Apply the modifications outlined in the 'Getting Started' section below.

7. **Activate the Resource Pack:**
   - In Minecraft, go to Settings > Global Resources.
   - Find your resource pack and activate it.

8. **Test Your Custom Menu Background:**
   - Launch or restart the game.
   - Navigate to the relevant menu (the one with the matching Unicode identifier), and you'll see your custom background.

Enjoy your customized Minecraft menu background! You've successfully added a personal touch to your in-game experience.

## Getting Started

To make this customization, you need to follow these simple steps:

1. **Identify Your Menu:** Determine the Java menu to which you want to add a custom background. It should start with a color code "&" and have a unique Unicode identifier e.g. ''

2. **Modify the Code:**
   - Replace the Unicode identifier in the following code segment:
     ```json
     "visible":"(not ($localtitle - '' = $localtitle))"
     ```
     Make sure the Unicode identifier you use matches your chosen menu.

   - Add your custom texture path here:
     ```json
     "texture":"textures/ui/inventory/ia/ia_categories"
     ```
     Replace the path with your own texture image.
     You may not apend the .png file ending.

3. **Customize Your Background:** You can create as many background variations as you like. The example background texture size provides ample space to add decorations or an extra headline using your preferred image editing software.

## Example

Here's a simple example of what your JSON UI modification could look like:

```json
  "another_element_name@ofunnys_chest_panel": {
    "texture":"textures/ui/inventory/ia/another_texture_image",
    "visible":"(not ($localtitle - 'another_identifier' = $localtitle))"
  },
```

## Contributions

If you find a way to improve this method or have ideas for more customization options, feel free to contribute to this repository. We welcome your insights and enhancements.

## License

Please respect the license information provided on [ofunnysBedrockExamples](https://github.com/ofunny/ofunnysBedrockExamples) and ensure proper attribution.
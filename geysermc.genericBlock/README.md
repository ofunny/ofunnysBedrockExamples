# Generic Block example with GeyserMC's custom block

Welcome to the Custom GeyserMC Block Example! 🚀

This project is here to show you how to create a custom block that can be used with GeyserMC. We're going to implement a block that's using a noteblock state as is used by various Minecraft plugins, such as ItemsAdder.

## What's Inside

Here's what you'll find in this example:

- **Block Mapping**: I'll give you a clear example of how to map your custom block in GeyserMC via noteblock states. This is essential to make your block work.

- **Normalized Generic Cube Model**: You'll learn how to create a simple cube model for your custom block. This will define its appearance in the game.

- **Animation**: I'll show you how to add some normalized animation to your block so that it looks like vanilla blocks in 1st and 3rd person.

- **Attachable**: You'll discover how to make a custom block attachable so players can hold it in their arm and invetory slots.

- **2D Sprite for Inventory**: I'll show you how to create a 2D sprite for your block, so it looks perfect in your inventory.

## Getting Started

Follow these simple steps to get started:

1. Change the value for "custom_model_data": 10001 and the material "minecraft:paper" within the "item_mappings.json" to fit the custom model id of your block item in Java.
2. Change the block state "instrument=snare,note=6,powered=false" within "block_mappings.json" to fit the noteblock state of your custom block in Java.
3. Make sure to merge "block_mappings.json" and "item_mappings.json" proberly, if you already have existing block or item mappings in your pack.
4. Copy all remaining files and folders within "geysermc.genericBlock" into your Bedrock resource pack.
5. Start your server with your custom block plugin (e.g. Itemsadder etc.) and try it out :)


## License

Please respect the license information provided on [ofunnysBedrockExamples](https://github.com/ofunny/ofunnysBedrockExamples) and ensure proper attribution.
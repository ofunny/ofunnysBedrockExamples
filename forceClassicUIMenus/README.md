## Force "Classic UI" for inventory menus

This tweak addresses an issue with how the "Pocket Edition" UI displays chest menus, which can make menus look odd. 

### How It Works

For small_chest_screen and large_chest_screen, I have adjusted the way the menus are displayed by adding a feature that recognizes special color codes at the start of menu titles.

If a menu title starts with a color code (§ in JSON UI / & in Java), this tweak will ignore the "Pocket Edition" profile settings and show the classic (desktop) inventory instead. This ensures that menus look consistent and better, but still allows players to choose Pocket UI for all other inventories within the game.

## HOW TO USE IT
"Simply copy and paste the "chest_screen.json" file from this repository into your own Bedrock resource pack. Make sure to copy it into the "ui" folder of your resource pack. If you don't have an "ui" folder, then create one. If you already have a custom "chest_screen.json," make sure to merge the code with your existing 'chest_screen.json' file properly.

### Technical Details

To make this feature work, the '%.xs' format operator is utilized, which extracts a certain number of bytes. Given that color codes characters like § typically occupy 2 bytes, '%.2s' is used to correctly extract the initial two bytes.

Please note that this feature is designed specifically for plugin menus that use color code to initiate the menu title.


# Minecraft Bedrock Custom HUD Bar Example

Welcome to the Minecraft Bedrock Custom HUD Bar Example! 🌟

This example demonstrates how to create a custom HUD (Heads-Up Display) bar using the ItemAdder plugin from Java. While this example was designed for ItemsAdder's thirst bar (https://itemsadder.devs.beer/faq/fill-thirst-mana-bar), the same approach can be applied to other plugins with minor adjustments, such as modifying the Unicode characters used to identify the custom bar message.

## Customizing the Action Bar Text

Custom HUD bars in Java are implemented using action bar messages, which are continuously sent to players who should see the bar. The same approach applies when using GeyserMC for Bedrock clients. However, unlike Java, Bedrock does not have the capability to use custom emojis for positioning and alignment. Therefore, we must place our custom bar using JSON UI. To distinguish whether an action bar message is a regular action bar or belongs to our custom HUD, we can rely on the Unicode characters used for positioning and alignment by the corresponding Java plugin to identify the message in Bedrock via JSON UI.

### Finding your Unicode idendifier

In the example below, I use the first four Unicode characters from ItemsAdder's thirst bar, but it's important to note that these characters can vary depending on the plugin and the specific implementation being used. You can refer to this [image](https://wiki.bedrock.dev/concepts/emojis.html#rp-font-glyph-e0-png) to identify the Unicode characters used in your particular implementation. Simply name the glyph sheets to correspond with the private Unicode range starting at E0 up to F8 (U+E000..U+F8FF) and use the slot index on the image to determine your specific character sequence.

If the custom HUD action bar sent by your Java plugin displays a specific emoji from the provided glyph sheet, combining the sheet's name with the slot index will yield the Unicode character required to construct the identifier below.

E.g

glyphsheet: glyph_F0.png
slot index: 0F

would than result in the Unicode character U+F00F, you can use any Unicode tool to convert the code to text, e.g. https://r12a.github.io/app-conversion/

### Hiding the Default Action Bar

The following code snippet helps hide the default action bar when the first four characters of the text are not specific Unicode characters used by the Java plugin.
Each Unicode character in my example take 3 bytes and therefore we extract the first 12 bytes using the '%.12s' operator.

```json
"hud_actionbar_text": {
    "$localtext": "$actionbar_text",
    "visible": "(not (('%.12s' * $localtext) = ''))"
},
```

This ensures that the default action bar remains hidden unless the required Unicode alignment characters are present.

### Creating a Custom HUD Bar

Now, let's dive into creating your custom HUD bar. The following code within `"ofunnys_hud_bar_text"` lets you design a unique panel for your HUD. It also removes all Unicode characters used for alignment so they will no longer bother in the final bar displayed within the Bedrock client.

```json
"$localtext": "$actionbar_text",
"$formattedtext": "($localtext - '' - '' - '')",
"visible": "(('%.12s' * $localtext) = '')"
```

This means you can have a custom HUD bar that displays when the action bar text starts with the specific Unicode characters ''. Make your HUD truly yours!


## Positioning and Size Adjustment

The `"size"` and `"offset"` settings within the `"ofunnys_hud_bar_text"` panel are crucial for positioning and resizing your custom HUD bar.

- **Size Adjustment (`"size"`)**: The `"size"` property allows you to specify the dimensions of your custom HUD bar. In this example, we've set it to `"100%c"` for both width and height. You can adjust these values to make your HUD bar larger or smaller as needed.

- **Positioning (`"offset"`)**: The `"offset"` property is used to determine the position of your custom HUD bar. In this case, we've set it to `"50%c"` for horizontal (X) and `"50%-48px"` for vertical (Y) positioning. You can fine-tune these values to place your HUD bar exactly where you want it on the screen.

With these settings, you have full control over the size and position of your custom HUD bar, ensuring it fits seamlessly into your Minecraft Bedrock experience.

### Don't Forget the Factory

Remember to use the `hud_actionbar_text_factory` name in the factory. Without this, `$actionbar_text` won't be available for you to use.

## How to Use

1. Download the example
2. Change glyph_E7.png to either fit the Unicode signs used by your Java plugin or adjust your Java plugin to use exactly this characters matching the provided glyph sheet.

e.g. in ItemsAdder you can specify the character used via `symbol: ""`

```YAML
info:
  namespace: iasurvival
font_images:
  thirst_bar_positive:
    suggest_in_command: false
    path: hud/thirst_bar/positive
    symbol: ""
    y_position: -15
  thirst_bar_negative:
    suggest_in_command: false
    path: hud/thirst_bar/negative
    symbol: ""
    y_position: -15
  thirst_bar_half:
    suggest_in_command: false
    path: hud/thirst_bar/half
    symbol: ""
    y_position: -15
huds:
```

3. Change the idendifier used in the example above to fit your plugins character pre-, suffix and possible spacer.
4. Copy the adapted file into your Bedrock resource pack and test it with your Bedrock client.

## Contributions

I welcome contributions and improvements to this example. Feel free to submit pull requests or engage in discussions to make this solution even better for the Minecraft Bedrock community.

## License

Please respect the license information provided on [ofunnysBedrockExamples](https://github.com/ofunny/ofunnysBedrockExamples) and ensure proper attribution.
# Custom Bedrock Sounds

Welcome to the Custom Bedrock Sounds example! 🎶

In this guide, we'll explore how you can map Minecraft Java sounds to Bedrock using GeyserMC. It's as simple as using the same sound identifier, such as "ofunny:super.fart," where "ofunny" is the namespace, and the rest after the : is the key. This aligns with how sounds are used in Java via the `playsound` command.

## Getting Started

To start creating your custom Bedrock sounds, you need to follow these steps:

1. Make sure to review all the necessary information about Bedrock sounds, which can be found in detail in the [official documentation](https://wiki.bedrock.dev/concepts/sounds.html). This resource will provide you with a comprehensive understanding of how sounds work in the Bedrock edition.

2. Create a `sound_definitions.json` file, which should be placed within the "sounds" folder of your Bedrock resource pack. You can use the example code provided here, and if you already have a `sound_definitions.json` file, ensure that you merge it properly.

3. Copy the provided example`sounds` directory into your Bedrock resource pack. The code within `sound_definitions.json` will define how your custom sounds are structured and how they can be heard. 

## Playing Custom Sounds

With your custom sound properly defined in the `sound_definitions.json` file, you can easily play it in Bedrock using the following command:

```bash
/playsound ofunny:super.fart hostile playername
```

Just replace "ofunny:super.fart" with your specific sound identifier, "hostile" with the sound category, and "playername" with the target player's name. Your custom sound will now be audible in the Minecraft Bedrock client!

## Get Creative

Feel free to experiment with various sounds, create unique audio experiences, and add your personal touch to the Bedrock edition. With this simple method, you can enjoy customized sounds that make your Minecraft world even more immersive.

Enjoy crafting your custom Bedrock sounds! 🎵✨

## License

Please respect the license information provided on [ofunnysBedrockExamples](https://github.com/ofunny/ofunnysBedrockExamples) and ensure proper attribution.
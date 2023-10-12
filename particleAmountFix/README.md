# Minecraft Bedrock Particle Limit Fix

Welcome to the Minecraft Bedrock Particle Limit Fix! 🌌

This is a workaround for the vanilla particle limit problem, updated for Minecraft Bedrock 1.20.32. With this fix, you can now enjoy more particles in your game, making it possible for plugins like MythicMobs etc. to display all particles equal to Java, rather than just a few of them.

## What's the Issue?

Minecraft Bedrock has a built-in limit on the number of particles that can be displayed in the game at a time. This can be frustrating, especially if you're using plugins like MythicMobs that rely on particles for various effects. The default settings may not show all the particles you need.

## The Fix

This fix allows you to adjust the particle limit to your specific needs. You can make sure that your game shows all the particles you want by editing the `max_particles` value in the `minecraft:emitter_rate_manual` section. Simply set it to your desired number (e.g., 500) or keep my suggested defaults.

Here's how you can adjust the value:

```json
"minecraft:emitter_rate_manual": {
    "max_particles": 500
},
```

It's that easy! You can increase or decrease the `max_particles` value to tailor the particle limit to your preferences.
Manual particle emission will occur only when the emitter is told to emit via the game itself. This is mostly used by legacy particle effects and will affect particles spawned via commands or plugins if GeyserMC is being used.

## Installation

1. Copy and paste the particles folder into your Bedrock resouce pack.
2. If you already have your own particle files, make sure to merge them proberly.

## Contributions

I welcome contributions and improvements to this fix. Feel free to submit pull requests or engage in discussions to make this solution even better for the Minecraft Bedrock community.

## License

Please respect the license information provided on [ofunnysBedrockExamples](https://github.com/ofunny/ofunnysBedrockExamples) and ensure proper attribution.
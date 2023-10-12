# geysermc.attack.arm_swing_fix
Simply fixes the attack arm swing animation for attachables made by Kastle's converter for GeyserMC.

## HOW TO USE IT
Simply copy and paste the "player_firstperson.geyser.animation.json" file from this repository into your own Bedrock resource pack. Make sure to copy it into the "animations" folder of your resource pack (if you don't have an "animations" folder, well than create one). That's all (if this doesn't work, make sure to clear your Bedrock client's resource pack cache, so it doesn't get stuck on the old pack version) :)

## IMPORTANT
This is not the final version, because it will apply the changed animation to all attachables what are using the "first_person.attack_rotation" while being held in the main hand slot. I plan to address GeyserMC custom items only if my feature request (https://github.com/GeyserMC/Geyser/issues/3988) will be implemented, so the fixed attack animation would only affect custom GeyserMC attachables. However, the impact of the alterted animation for none GeyserMC attachables is minor, so the fix is usable already in it's current state. But as always, please report any bugs or problems via https://github.com/ofunny/ofunnysBedrockExamples/issues

That means in detail that all vanilla attachables: all helmets, all chestplates, all leggins and all boots, elytra, bow, crossbow, shield and trident will also use the new adjusted first person arm swing / attack animation. I could already except these vanilla attachables, but that would make the queries super long, slower and also especially trident and shield etc. looks even better with the new adjusted animation and for the rest the difference is so minor that it really does not matter. As noted above, that will be fixed if my feature request (https://github.com/GeyserMC/Geyser/pull/4041) will be merged.

## MISCELLANEOUS
This will only fix the attack/arm swing animation, if the attachable's initial position and rotation does not look good (while not attacking/arm swinging), you would still have to correct the values in your attachable's animation file for "geyser_custom" in the "firstperson_main_hand" animation.

"vr_attack_rotation" (virtual reality) still has vanilla defaults and might be adjusted in a furture version.

Yours ofunny, 
## Discord: https://discord.ofunny.world


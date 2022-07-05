# Gives the player the stim effect

effect give @s minecraft:speed 10 5 false
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.3 2
playsound minecraft:entity.slime.attack master @s ~ ~ ~ 0.5 1.6
clear @s minecraft:carrot_on_a_stick{CustomModelData:2000000} 1
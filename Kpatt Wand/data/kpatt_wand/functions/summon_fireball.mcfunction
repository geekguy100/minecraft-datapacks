# Summons the fireball at the player's location and removes an ammo from their inventory.
particle minecraft:totem_of_undying ^ ^1 ^1
particle minecraft:totem_of_undying ^ ^1 ^1.3
particle minecraft:totem_of_undying ^ ^1 ^1.6

playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 1
playsound minecraft:entity.fox.teleport master @s ~ ~ ~ 0.5

summon minecraft:fireball ^ ^1 ^1
clear @s minecraft:blaze_powder 1 
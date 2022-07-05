# Checks to see if the torch is placeable. Spawns an armor stand if it is.
# Will not spawn a torch of the player is in the air.

# distance=..5 is the sensitivity of placing an armor stand. This means no armor stand will spawn if one is already
# present within 5 blocks.

execute unless entity @e[type=minecraft:armor_stand, tag=torch_tester, distance=..2] run function kpatt_torch:spawn_armor_stand
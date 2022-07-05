# Deletes the torch and armor stand

setblock ~ ~ ~ minecraft:air
scoreboard players reset @s can_place_torch
scoreboard players reset @s torch_time
kill @s
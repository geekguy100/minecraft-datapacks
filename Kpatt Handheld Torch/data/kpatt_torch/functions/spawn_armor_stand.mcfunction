# Spawns an armor stand at the player's position and places a torch if one can be placed.

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true, Marker:true, Invisible:true, NoGravity:true, Tags:["torch_tester"]}
execute store success score @e[type=minecraft:armor_stand, tag=torch_tester, distance=..1, limit=1] can_place_torch run setblock ~ ~ ~ minecraft:soul_torch keep

# If no torch can be placed, kill the armor stand.
execute as @e[scores={can_place_torch=0}, tag=torch_tester] run kill @s
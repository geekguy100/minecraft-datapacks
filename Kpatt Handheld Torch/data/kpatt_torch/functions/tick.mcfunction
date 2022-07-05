# Spawns an armor stand torch tester if the player is occupying an empty space, holding a torch (on or off hand), 
# and an armor stand is not already present.
execute as @a[nbt={SelectedItem:{id:"minecraft:torch"}}] at @s run function kpatt_torch:check_if_placeable
execute as @a[nbt={Inventory:[{id:"minecraft:torch", Slot:-106b}]}] at @s run function kpatt_torch:check_if_placeable

# Increase the torch time of each armor stand each tick.
scoreboard players add @e[tag=torch_tester] torch_time 1

# Have the armor stand delete any torch drops for as long as it lives.
execute as @e[type=minecraft:armor_stand, scores={torch_time=5..}] at @s run function kpatt_torch:cleanup_torch_drops

# Try to delete the torch and armor stand after a certain number of ticks. 20 ticks = 1 second
execute as @e[tag=torch_tester, scores={torch_time=20..}] at @s run function kpatt_torch:check_cleanup_condition

# Destroy any torches that get dropped between ticks 2-5
execute as @e[type=minecraft:armor_stand, scores={torch_time=1..5}] at @s run data modify entity @e[type=minecraft:item, name="Soul Torch", limit=1, distance=..1, sort=nearest] Age set value 90000000
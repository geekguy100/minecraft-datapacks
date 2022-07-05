# Check for players right clicking their stim, and gives them the potion effect if they are.

execute as @a[scores={use_stim=1..}] at @s run function kpatt_stim:check_if_can_use_stim
scoreboard players set @a[scores={use_stim=1..}] use_stim 0
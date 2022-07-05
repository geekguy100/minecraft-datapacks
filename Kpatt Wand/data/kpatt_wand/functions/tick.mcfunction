# Check for players right clicking their carrot on a stick, and spawn a fireball at their location.

execute as @a[scores={use_wand=1..}] at @s run function kpatt_wand:check_if_fireball_spawnable
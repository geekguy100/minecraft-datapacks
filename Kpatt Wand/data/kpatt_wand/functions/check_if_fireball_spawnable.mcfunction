# Checks to see if the player has the required items in their inventory

execute if entity @s[nbt={Inventory:[{id:"minecraft:blaze_powder"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1014001}}}] run function kpatt_wand:summon_fireball

scoreboard players set @s use_wand 0
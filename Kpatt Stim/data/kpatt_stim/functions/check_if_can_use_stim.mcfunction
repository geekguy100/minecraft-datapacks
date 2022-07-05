# Checks to see if the player can use the stim.

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2000000}}}] run function kpatt_stim:use_stim
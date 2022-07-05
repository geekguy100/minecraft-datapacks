# Give the stim to the player.

recipe take @s kpatt_stim:stim
advancement revoke @s only kpatt_stim:craft_stim_adv
clear @s minecraft:knowledge_book
give @s minecraft:carrot_on_a_stick{CustomModelData:2000000, display:{Name:"[{\"text\":\"Stim Injection\",\"color\":\"#26FF3C\",\"italic\":false}]"}} 3
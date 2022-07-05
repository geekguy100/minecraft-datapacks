# Checks to see if the armor stand should be destroyed.

# If the player is out of range, cleanup the armor stand and torch.
execute if entity @p[distance=1..] run function kpatt_torch:cleanup_armor_stand

# TODO: If the armor stand is alive, like the player has not left the range,
#       keep checking if the block ~ ~ ~ of the armor stand is air. Once it becomes air,
#       meaning the torch has been destroyed, then we'll destory the torch item that spawned.
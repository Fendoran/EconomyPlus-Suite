## If the player walks away from their spot
title @s subtitle {"text":"Teleportation Interrupted","color":"red","bold":true}
title @s title ""
scoreboard players reset ep.cool_down ep.variable
scoreboard players reset @s ep.pre_tp

# Remove TP tags
tag @s remove ep.trait.player.teleport.shop
tag @s remove ep.trait.player.teleport.spawn
tag @s remove ep.trait.player.teleport.home
tag @s remove ep.trait.player.teleport.auction
tag @s remove ep.trait.player.teleport.bank

playsound minecraft:block.beacon.deactivate voice @s ~ ~ ~ 1 1

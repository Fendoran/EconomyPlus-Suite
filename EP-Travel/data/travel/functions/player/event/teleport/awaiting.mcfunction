## Runs when the player is waiting to be teleported
title @s times 0 50 5
scoreboard players remove @s ep.pre_tp 1
scoreboard players operation #ep.cool_down ep.variable = @s ep.pre_tp
scoreboard players add #ep.cool_down ep.variable 20
scoreboard players operation #ep.cool_down ep.variable /= SECOND ep.variable
title @s[tag=ep.trait.player.teleport.shop] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Shop","color":"#80F9B7","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]
title @s[tag=ep.trait.player.teleport.home] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Home","color":"#ffffff","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]
title @s[tag=ep.trait.player.teleport.spawn] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Spawn","color":"#42235d","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]
title @s[tag=ep.trait.player.teleport.auction] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Auction","color":"red","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]
title @s[tag=ep.trait.player.teleport.bank] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Bank","color":"#FFD700","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]
title @s[tag=ep.trait.player.teleport.market] subtitle [{"text":"Traveling to ","color":"#C0C0C0","bold":false},{"text":"Market","color":"#80F9B7","bold":true},{"text":" in ","color":"#C0C0C0","bold":false},{"score":{"name":"#ep.cool_down","objective":"ep.variable"},"color":"#808080","bold":true},{"text":" seconds.","color":"#C0C0C0","bold":false}]

title @s title {"text":"Teleporting...","color":"#32CD32","bold":true}

# player has moved:
execute store result score #ep.temp ep.position.x run data get entity @s Pos[0]
execute store result score #ep.temp ep.position.y run data get entity @s Pos[1]
execute store result score #ep.temp ep.position.z run data get entity @s Pos[2]
execute unless score @s ep.position.x = #ep.temp ep.position.x run function travel:player/event/teleport/leave
execute if score @s ep.position.x = #ep.temp ep.position.x unless score @s ep.position.y = #ep.temp ep.position.y run function travel:player/event/teleport/leave
execute if score @s ep.position.x = #ep.temp ep.position.x if score @s ep.position.y = #ep.temp ep.position.y unless score @s ep.position.z = #ep.temp ep.position.z run function travel:player/event/teleport/leave

# time is up, and successful
execute if score @s[tag=ep.trait.player.teleport.shop] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/shop
execute if score @s[tag=ep.trait.player.teleport.home] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/home
execute if score @s[tag=ep.trait.player.teleport.spawn] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/spawn
execute if score @s[tag=ep.trait.player.teleport.auction] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/auction
execute if score @s[tag=ep.trait.player.teleport.bank] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/bank
execute if score @s[tag=ep.trait.player.teleport.market] ep.pre_tp matches ..0 in overworld run function travel:terminal/teleport/market
execute if score @s ep.pre_tp matches ..0 run scoreboard players reset ep.cool_down ep.variable
execute if score @s ep.pre_tp matches ..0 run scoreboard players reset @s ep.pre_tp

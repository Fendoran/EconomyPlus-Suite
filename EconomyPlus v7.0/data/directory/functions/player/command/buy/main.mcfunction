## Runs when player uses /trigger buy.
# determines if player is near player shop
tag @e[tag=ep.trait.player_shop, limit=1, sort=nearest, distance=..5] add ep.player_shop.target

scoreboard players operation #ep.price ep.variable = @e[tag=ep.player_shop.target] ep.money

scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state = #ep.enum.buy.idle ep.state unless entity @e[tag=ep.player_shop.target] run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state = #ep.enum.buy.idle ep.state if score @s ep.money < #ep.price ep.variable run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state = #ep.enum.buy.idle ep.state if score @s ep.session = @e[tag=ep.player_shop.target, limit=1] ep.session run scoreboard players set #ep.state ep.state 3

execute if score #ep.state ep.state matches 0 run function directory:player/command/buy/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/buy/message/shop_not_found
execute if score #ep.state ep.state matches 2 run function directory:player/command/buy/message/not_enough_money
execute if score #ep.state ep.state matches 3 run function directory:player/command/buy/message/buy_own_item
tag @e[tag=ep.player_shop.target] remove ep.player_shop.target

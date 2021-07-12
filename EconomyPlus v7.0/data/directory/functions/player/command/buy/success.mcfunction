## Runs if /trigger buy is successful
execute as @e[tag=ep.player_shop.target] run function directory:player_shop/method/get_item
scoreboard players operation #ep.target_uid ep.session = @e[tag=ep.player_shop.target] ep.session
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.player_shop.owner
tag @s add ep.player_shop.buyer

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = @a[tag=ep.player_shop.owner] ep.money
scoreboard players operation #ep.transaction ep.money = @e[tag=ep.player_shop.target] ep.money
function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.sender ep.money
scoreboard players operation @a[tag=ep.player_shop.owner] ep.money = #ep.receiver ep.money

execute as @s run function directory:player/command/buy/message/success
execute as @a[tag=ep.player_shop.owner] run function directory:player/command/sell/message/success

kill @e[tag=ep.player_shop.target]

tag @s remove ep.player_shop.buyer
tag @a[tag=ep.player_shop.owner] remove ep.player_shop.owner

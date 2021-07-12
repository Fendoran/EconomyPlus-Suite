## Runs if player is buying from a player owned market shop
# Check for full inventory
function directory:market/check_full

scoreboard players operation #ep.success ep.variable = #ep.enum.bool.false ep.state


execute as @e[type=area_effect_cloud,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s run function directory:market/use_buy/owner/main

scoreboard players operation #ep.state ep.state = #ep.enum.buyer.idle ep.state
execute if score #ep.state ep.state = #ep.enum.buyer.idle ep.state unless score #ep.use ep.variable matches 1.. run scoreboard players operation #ep.state ep.state = #ep.enum.buyer.in_cooldown ep.state

# Statuses
execute unless score #ep.check_full ep.variable matches 36.. if score #ep.state ep.state = #ep.enum.buyer.idle ep.state run function directory:market/use_buy/owner/unstock/success
execute unless score #ep.check_full ep.variable matches 36.. if score #ep.state ep.state = #ep.enum.buyer.in_cooldown ep.state run function directory:market/message/buyer/out_of_stock
execute if score #ep.check_full ep.variable matches 36.. run function directory:market/message/buyer/inv_full
tag @e[tag=ep.trait.market.target] remove ep.trait.market.target

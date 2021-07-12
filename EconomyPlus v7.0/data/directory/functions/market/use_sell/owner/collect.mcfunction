## Runs when the shop owner collects the items from the shop
function directory:ram/clear
function directory:heap/get/quantity

execute as @e[type=area_effect_cloud,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_sell/owner/main

execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity
scoreboard players operation #ep.divisor ep.variable = #ep.total_quantity ep.variable
scoreboard players operation #ep.total_quantity ep.variable *= #ep.use ep.variable

scoreboard players operation #ep.left_quantity ep.variable = #ep.total_quantity ep.variable

execute if score #ep.total_quantity ep.variable matches 0 run function directory:market/message/owner/fail_collect_items

function directory:market/check_full
execute if score #ep.total_quantity ep.variable matches 1.. if score #ep.check_full ep.variable matches ..35 run function directory:market/message/owner/collect_items
execute if score #ep.total_quantity ep.variable matches 1.. if score #ep.check_full ep.variable matches 36.. run function directory:market/message/owner/no_inventory


execute if score #ep.left_quantity ep.variable matches 1.. if score #ep.check_full ep.variable matches ..35 run function directory:market/use_sell/owner/collect_loop
execute as @e[type=area_effect_cloud,tag=ep.trait.market,tag=ep.trait.market.target,limit=1,sort=nearest] run function directory:shop/event/market_owner_use_sell

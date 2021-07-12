## Runs if the player is the owner of the market shop
function directory:ram/clear

execute as @e[type=area_effect_cloud,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_sell/owner/main

execute if score @s ep.money < #ep.price ep.variable run function directory:market/message/owner/fail_stock
execute if score @s ep.money >= #ep.price ep.variable run function directory:market/use_sell/owner/increase_value
#execute if score @e[type=area_effect_cloud,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] ep.use matches 1.. run function directory:market/use_sell/owner/collect
function directory:ram/clear
tag @e[tag=ep.trait.market.target] remove ep.trait.market.target

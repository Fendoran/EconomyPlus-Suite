## Runs if the player is the owner of the market shop
function directory:ram/clear

execute as @e[type=marker,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_sell/owner/main

execute if score #ep.stored_money ep.variable < #ep.price ep.variable run function directory:market/message/owner/fail_unstock
execute if score #ep.stored_money ep.variable >= #ep.price ep.variable run function directory:market/use_sell/owner/decrease_value
#execute if score @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] ep.use matches 1.. run function directory:market/use_sell/owner/collect
function directory:ram/clear
tag @e[tag=ep.trait.market.target] remove ep.trait.market.target

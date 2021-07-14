## Stocks the shop
function directory:ram/clear

execute as @e[type=marker,tag=ep.trait.market] if score @s ep.session = #ep.shop_uid ep.session at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_buy/owner/main

execute if entity @e[tag=ep.trait.market.target] run function directory:market/use_buy/checker/main

function directory:ram/clear
tag @e[tag=ep.trait.market.target] remove ep.trait.market.target

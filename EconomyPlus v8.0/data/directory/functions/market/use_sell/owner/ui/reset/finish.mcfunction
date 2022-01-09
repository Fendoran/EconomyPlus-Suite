tag @s add ep.terminal.button
tag @s add ep.terminal.market.sell.reset
tag @s add ep.dir.market
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '{"text": "Reset", "color": "#ffffff"}'
scoreboard players operation @s ep.owner = #ep.shop_uid ep.session

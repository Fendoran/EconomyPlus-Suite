tag @s add ep.terminal.button
tag @s add ep.terminal.market.sell.unstock
tag @s add ep.dir.market
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '{"text": "Unstock", "color": "#ffffff"}'
scoreboard players operation @s ep.owner = #ep.shop_uid ep.session

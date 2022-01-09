tag @s add ep.terminal.text
tag @s add ep.terminal.market.buy
tag @s add ep.dir.market
data modify entity @s CustomName set value '[{"text": "Market", "color": "#32CD32"}]'
function directory:terminal/constructor/finalize

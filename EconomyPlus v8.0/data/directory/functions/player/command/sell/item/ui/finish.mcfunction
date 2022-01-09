tag @s add ep.terminal.submit
tag @s add ep.terminal.sell.item
tag @s add ep.dir.sell
data modify entity @s CustomName set value '[{"text": "Sell Item", "color": "#C0C0C0"}, {"text": " (Right Click)", "color": "#32CD32"}]'
function directory:terminal/constructor/finalize

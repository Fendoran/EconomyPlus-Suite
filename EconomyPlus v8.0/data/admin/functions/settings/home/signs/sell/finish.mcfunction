tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.signs.sell
tag @s add ep.dir.admin
tag @s add ep.dir.admin.signs
data modify entity @s CustomName set value '[{"text": "Sell", "color": "#ffffff"}]'
function directory:terminal/constructor/finalize

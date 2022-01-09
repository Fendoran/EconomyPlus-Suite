tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.floater.auction
tag @s add ep.dir.admin
tag @s add ep.dir.admin.floater
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '{"text": "Auction", "color": "#ffffff"}'

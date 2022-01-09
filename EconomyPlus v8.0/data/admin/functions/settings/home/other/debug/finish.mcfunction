tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.other.debug
tag @s add ep.dir.admin
tag @s add ep.dir.admin.other
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '{"text": "Debug", "color": "#ffffff"}'

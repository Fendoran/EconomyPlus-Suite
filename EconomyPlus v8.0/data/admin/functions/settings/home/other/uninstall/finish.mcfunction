tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.other.uninstall
tag @s add ep.dir.admin
tag @s add ep.dir.admin.other
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '{"text": "Uninstall", "color": "#C0C0C0"}'

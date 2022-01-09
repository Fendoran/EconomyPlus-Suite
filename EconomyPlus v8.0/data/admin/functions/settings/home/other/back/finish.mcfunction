tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.other
tag @s add ep.terminal.admin_setting.home.other.back
tag @s add ep.dir.admin
tag @s add ep.dir.admin.other
data modify entity @s CustomName set value '[{"text": "Back", "color": "#ffffff"}]'
function directory:terminal/constructor/finalize

tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.teleports
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '[{"text": "⿵ Teleports", "color": "#ffffff"}]'

tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.teleports.bank.back
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.teleports
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '[{"text": "↩", "color": "#ffffff"}]'

tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.bank.bounty
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.bank
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '[{"text": "Bounty", "color": "#ffffff"}]'

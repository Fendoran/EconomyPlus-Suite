# define tag ep.terminal.submit
tag @s add ep.terminal.submit
tag @s add ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_enabled
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.bank
data modify entity @s CustomName set value '{"text": "Yes", "color": "#32CD32"}'
function directory:terminal/constructor/finalize

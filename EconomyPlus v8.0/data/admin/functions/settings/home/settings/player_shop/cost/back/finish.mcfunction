# Loan submit button
# define tag ep.terminal.submit
tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.player_shop.cost.back
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.player_shop
data modify entity @s CustomName set value '{"text": "↩", "color": "#ffffff"}'
function directory:terminal/constructor/finalize

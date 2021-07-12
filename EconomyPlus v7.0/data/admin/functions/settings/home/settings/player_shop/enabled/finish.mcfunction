tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.player_shop.enable
function directory:terminal/constructor/finalize
data modify entity @s CustomName set value '[{"text": "Enable", "color": "#32CD32"}]'

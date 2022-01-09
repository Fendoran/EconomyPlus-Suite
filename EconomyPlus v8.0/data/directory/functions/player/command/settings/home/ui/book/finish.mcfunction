## Creates actionbar button
tag @s add ep.terminal.button
tag @s add ep.dir.settings
tag @s add ep.terminal.player_setting.home.book
data modify entity @s CustomName set value '{"text": "Get Book","color":"#ffffff"}'
function directory:terminal/constructor/finalize

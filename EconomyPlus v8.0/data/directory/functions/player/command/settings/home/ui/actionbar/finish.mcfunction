## Creates actionbar button
tag @s add ep.terminal.button
tag @s add ep.dir.settings
tag @s add ep.terminal.player_setting.home.actionbar
execute if score #ep.actionbar ep.state matches 1 run data modify entity @s CustomName set value '{"text": "Actionbar","color":"#ffffff"}'
execute unless score #ep.actionbar ep.state matches 1 run data modify entity @s CustomName set value '{"text": "Actionbar","color":"#C0C0C0"}'
function directory:terminal/constructor/finalize

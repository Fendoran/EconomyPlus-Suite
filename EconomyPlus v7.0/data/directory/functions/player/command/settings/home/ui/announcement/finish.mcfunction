## Creates actionbar button
tag @s add ep.terminal.button
tag @s add ep.dir.settings
tag @s add ep.terminal.player_setting.home.announcement
execute if score #ep.announcement ep.state matches 1 run data modify entity @s CustomName set value '{"text": "Announcement","color":"#ffffff"}'
execute unless score #ep.announcement ep.state matches 1 run data modify entity @s CustomName set value '{"text": "Announcement","color":"#C0C0C0"}'
function directory:terminal/constructor/finalize

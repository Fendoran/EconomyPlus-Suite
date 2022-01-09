tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.teleports.spawn
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.teleports
function directory:terminal/constructor/finalize
execute if score #ep.terminal.teleport_cooldown1 ep.variable matches ..-1 run data modify entity @s CustomName set value '[{"text": "Spawn", "color": "#C0C0C0"}]'
execute unless score #ep.terminal.teleport_cooldown1 ep.variable matches ..-1 run data modify entity @s CustomName set value '[{"text": "Spawn", "color": "#ffffff"}]'

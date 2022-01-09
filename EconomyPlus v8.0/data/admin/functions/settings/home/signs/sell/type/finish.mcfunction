tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.signs.oak
tag @s add ep.dir.admin
tag @s add ep.dir.admin.signs
tag @s add ep.dir.admin.signs.sell
tag @s add ep.terminal.admin_setting.signs.draw
scoreboard players set @s ep.variable 0
scoreboard players set #ep.test ep.variable 0
data modify entity @s CustomName set value '[{"text": "Oak", "color": "#ad8a4a"}]'
function directory:terminal/constructor/finalize

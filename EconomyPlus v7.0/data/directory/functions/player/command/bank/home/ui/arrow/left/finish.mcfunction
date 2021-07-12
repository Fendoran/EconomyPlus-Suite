scoreboard players operation @s ep.session = #ep.target_uid ep.session
tag @s add ep.terminal.button
tag @s add ep.terminal.sign_arrow
tag @s add ep.dir.bank
tag @s add ep.trait.terminal
scoreboard players set @s ep.variable -1
data modify entity @s CustomName set value '[{"text": "<", "color": "#ffffff"}]'
function directory:ui/constructor/finalize

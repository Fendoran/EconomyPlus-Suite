scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.button
tag @s add ep.trait.ui.arrow
scoreboard players set @s ep.variable -1
data modify entity @s CustomName set value '[{"text": "<", "color": "#ffffff"}]'
function directory:ui/constructor/finalize

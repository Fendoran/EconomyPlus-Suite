scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.number
scoreboard players set @s ep.variable 25
data modify entity @s CustomName set value '[{"text": "+25", "color": "blue"}]'
function directory:ui/constructor/finalize

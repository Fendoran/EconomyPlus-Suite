scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.ui.dynamic

data modify entity @s CustomName set value '[{"text": "Dynamic", "color": "#32CD32"}]'
function directory:ui/constructor/finalize

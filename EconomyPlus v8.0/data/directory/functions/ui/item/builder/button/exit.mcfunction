scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.button
tag @s add ep.trait.ui.exit
data modify entity @s CustomName set value '[{"text": "✕", "color": "dark_red"}]'
function directory:ui/constructor/finalize

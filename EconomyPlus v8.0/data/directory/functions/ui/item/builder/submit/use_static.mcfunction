scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.ui.use

data modify entity @s CustomName set value '[{"text": "Max Use", "color": "aqua"}]'
function directory:ui/constructor/finalize

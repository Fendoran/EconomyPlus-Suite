scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
scoreboard players set #ep.ui.value ep.variable 0
tag @s add ep.trait.ui.submit
tag @s add ep.trait.number_formatted
tag @s add ep.trait.ui.quantity
function directory:ui/method/draw
function directory:ui/constructor/finalize

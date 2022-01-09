## Setes up terminal panel for max_use interface (mostly for shop signs)
scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.number_formatted
tag @s add ep.trait.ui.max_use
function directory:ui/method/draw
function directory:ui/constructor/finalize

execute if score #ep.ui.value ep.variable = #ep.enum.shop.infinite_use ep.state run data modify entity @s CustomName set value ''
execute if score #ep.ui.value ep.variable = #ep.enum.shop.infinite_use ep.state run data modify entity @s CustomName set value '{"text": "∞", "color": "#FFD700"}'

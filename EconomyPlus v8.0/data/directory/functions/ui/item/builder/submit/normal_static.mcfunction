scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.ui.normal
tag @s add ep.trait.shop_formatted

data modify entity @s CustomName set value '[{"text": "Normal", "color": "#ffffff"}]'
function directory:ui/constructor/finalize

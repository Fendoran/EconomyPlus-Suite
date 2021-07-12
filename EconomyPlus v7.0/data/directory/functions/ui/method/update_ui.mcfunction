execute if entity @s[tag=ep.trait.ui.quantity_tag] run function directory:ui/method/update/quantity_tag
execute if entity @s[tag=ep.trait.ui.max_use_tag] run function directory:ui/method/update/max_use_tag
execute if entity @s[tag=ep.trait.ui.reset_time_tag] run function directory:ui/method/update/reset_time_tag
execute if entity @s[tag=ep.trait.ui.price_tag] run function directory:ui/method/update/price_tag

scoreboard players operation @s ep.variable = #ep.count ep.variable

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '[{"score": {"name": "#ep.count", "objective": "ep.variable"}, "color": "#FFD700"}]'}
data modify entity @s CustomName set value ''
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air

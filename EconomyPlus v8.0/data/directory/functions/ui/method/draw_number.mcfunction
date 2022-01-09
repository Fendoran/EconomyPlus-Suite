scoreboard players operation @s ep.variable = #ep.ui.value ep.variable

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '{"score": {"name": "#ep.ui.value", "objective": "ep.variable"}, "color": "#FFD700"}'}
data modify entity @s CustomName set value ''
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air
execute if entity @s[tag=ep.trait.ui.max_use] if score #ep.ui.value ep.variable = #ep.enum.shop.infinite_use ep.state run data modify entity @s CustomName set value '{"text": "∞", "color": "#FFD700"}'

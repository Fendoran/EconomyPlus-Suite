# define entity #ep.input.time
scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '', Text2: '', Text3: ''}

execute if score #ep.hours ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text2 set value '[{"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#FFD700"}]'
execute if score #ep.hours ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text2 set value '[{"text": "0", "color": "#FFD700"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#FFD700"}]'

execute if score #ep.minutes ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text3 set value '[{"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#FFD700"}]'
execute if score #ep.minutes ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text3 set value '[{"text": "0", "color": "#FFD700"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#FFD700"}]'

data modify block 29999999 0 29999999 Text1 set value '[{"nbt": "Text2", "block": "29999999 0 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text3", "block": "29999999 0 29999999", "interpret": true}]'

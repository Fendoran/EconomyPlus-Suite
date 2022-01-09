# define entity #ep.input.time
scoreboard players operation #ep.hours ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.hours ep.variable /= HOUR ep.variable

scoreboard players operation #ep.minutes ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.minutes ep.variable /= MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable

scoreboard players operation #ep.seconds ep.variable = #ep.input.time ep.variable
scoreboard players operation #ep.seconds ep.variable /= SECOND ep.variable
scoreboard players operation #ep.seconds ep.variable %= MINUTE_IN_SECOND ep.variable

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '', Text2: '', Text3: '', Text4: ''}

execute if score #ep.hours ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text2 set value '[{"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#32CD32"}]'
execute if score #ep.hours ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text2 set value '[{"text": "0", "color": "#32CD32"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#32CD32"}]'

execute if score #ep.minutes ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text3 set value '[{"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#32CD32"}]'
execute if score #ep.minutes ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text3 set value '[{"text": "0", "color": "#32CD32"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#32CD32"}]'

execute if score #ep.seconds ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text4 set value '[{"score": {"name": "#ep.seconds", "objective": "ep.variable"}, "color": "#32CD32"}]'
execute if score #ep.seconds ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 0 29999999 Text4 set value '[{"text": "0", "color": "#32CD32"}, {"score": {"name": "#ep.seconds", "objective": "ep.variable"}, "color": "#32CD32"}]'

execute unless score #ep.hours ep.variable matches 0 run data modify block 29999999 0 29999999 Text1 set value '[{"nbt": "Text2", "block": "29999999 0 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text3", "block": "29999999 0 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text4", "block": "29999999 0 29999999", "interpret": true}]'
execute if score #ep.hours ep.variable matches 0 unless score #ep.minutes ep.variable matches 0 run data modify block 29999999 0 29999999 Text1 set value '[{"nbt": "Text3", "block": "29999999 0 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text4", "block": "29999999 0 29999999", "interpret": true}]'
execute if score #ep.hours ep.variable matches 0 if score #ep.minutes ep.variable matches 0 run data modify block 29999999 0 29999999 Text1 set value '[{"nbt": "Text4", "block": "29999999 0 29999999", "interpret": true}]'

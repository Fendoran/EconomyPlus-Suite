# Sets a custom name to time
scoreboard players set #ep.state ep.state 0
execute store result score #ep.display ep.variable run time query daytime
scoreboard players add #ep.display ep.variable 5000
execute if score #ep.display ep.variable matches 24000.. run scoreboard players remove #ep.display ep.variable 24000

scoreboard players operation #ep.hours ep.variable = #ep.display ep.variable
scoreboard players operation #ep.hours ep.variable /= GAME_HOUR ep.variable
scoreboard players add #ep.hours ep.variable 1
execute if score #ep.hours ep.variable matches 12.. unless score #ep.hours ep.variable matches 24 run scoreboard players set #ep.state ep.state 1
execute if score #ep.hours ep.variable matches 13.. run scoreboard players remove #ep.hours ep.variable 12

scoreboard players operation #ep.minutes ep.variable = #ep.display ep.variable
scoreboard players operation #ep.minutes ep.variable *= GAME_MINUTE ep.variable
scoreboard players operation #ep.minutes ep.variable /= GAME_DAY ep.variable
scoreboard players operation #ep.minutes ep.variable %= MINUTE_IN_SECOND ep.variable


setblock 29999999 255 29999999 minecraft:oak_sign{Text1: '', Text2: '', Text3: '', Text4: ''}

execute if score #ep.hours ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 255 29999999 Text2 set value '[{"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#ffffff"}]'
execute if score #ep.hours ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 255 29999999 Text2 set value '[{"text": "0", "color": "#ffffff"}, {"score": {"name": "#ep.hours", "objective": "ep.variable"}, "color": "#ffffff"}]'

execute if score #ep.minutes ep.variable >= SINGLE_DIGIT ep.variable run data modify block 29999999 255 29999999 Text3 set value '[{"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#ffffff"}]'
execute if score #ep.minutes ep.variable < SINGLE_DIGIT ep.variable run data modify block 29999999 255 29999999 Text3 set value '[{"text": "0", "color": "#ffffff"}, {"score": {"name": "#ep.minutes", "objective": "ep.variable"}, "color": "#ffffff"}]'

execute if score #ep.state ep.state matches 0 run data modify block 29999999 255 29999999 Text1 set value '[{"nbt": "Text2", "block": "29999999 255 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text3", "block": "29999999 255 29999999", "interpret": true}, {"text":" AM","color":"blue"}]'
execute if score #ep.state ep.state matches 1 run data modify block 29999999 255 29999999 Text1 set value '[{"nbt": "Text2", "block": "29999999 255 29999999", "interpret": true}, {"text": ":", "color": "#C0C0C0"}, {"nbt": "Text3", "block": "29999999 255 29999999", "interpret": true}, {"text":" PM","color":"red"}]'
data modify entity @s CustomName set from block 29999999 255 29999999 Text1

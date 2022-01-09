setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '[{"text": "-", "color": "red"}, {"text": "$", "color": "red"}, {"score": {"name": "#ep.transaction", "objective": "ep.variable"}, "color": "red"}]'}

execute positioned ^0.5 ^-0.5 ^ run function directory:float_tooltip/constructor/new
execute as @e[tag=ep.spawning] run data modify entity @s CustomName set from block 29999999 0 29999999 Text1
execute as @e[tag=ep.spawning] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=ep.spawning] run function directory:float_tooltip/constructor/finalize

setblock 29999999 0 29999999 minecraft:air

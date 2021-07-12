## Dictionary type to map redstone score (#ep.redstone_level ep.variable) to the rotation of the item frame
execute if score #ep.redstone_level ep.variable matches 0 run data merge entity @s[nbt={Item:{id:"minecraft:redstone"}}] {Item:{id:"minecraft:air",Count:1b}}
execute if score #ep.redstone_level ep.variable matches 1 run data merge entity @s[nbt=!{ItemRotation:0b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:0b}
execute if score #ep.redstone_level ep.variable matches 2 run data merge entity @s[nbt=!{ItemRotation:1b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:1b}
execute if score #ep.redstone_level ep.variable matches 3 run data merge entity @s[nbt=!{ItemRotation:2b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:2b}
execute if score #ep.redstone_level ep.variable matches 4 run data merge entity @s[nbt=!{ItemRotation:3b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:3b}
execute if score #ep.redstone_level ep.variable matches 5 run data merge entity @s[nbt=!{ItemRotation:4b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:4b}
execute if score #ep.redstone_level ep.variable matches 6 run data merge entity @s[nbt=!{ItemRotation:5b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:5b}
execute if score #ep.redstone_level ep.variable matches 7 run data merge entity @s[nbt=!{ItemRotation:6b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:6b}
execute if score #ep.redstone_level ep.variable matches 8 run data merge entity @s[nbt=!{ItemRotation:7b}] {Item:{id:"minecraft:redstone",Count:1b},ItemRotation:7b}
# a goofy way to force a block update
data merge block ~ ~ ~ {Update:true}

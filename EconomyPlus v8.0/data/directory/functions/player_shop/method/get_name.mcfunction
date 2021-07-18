summon item 29999999 0 29999999 {Tags: ['ep.getter'], Item: {id: 'minecraft:stone', Count: 1b}}
execute as @e[tag=ep.getter] run data modify entity @s Item set from storage ep:memory input_item

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: ''}

execute if data storage ep:memory input_item.tag.display.Name run data modify block 29999999 0 29999999 Text1 set value '{"nbt": "input_item.tag.display.Name", "storage": "ep:memory", "interpret": true}'
execute unless data storage ep:memory input_item.tag.display.Name run data modify block 29999999 0 29999999 Text1 set value '{"selector": "@e[tag=ep.getter]"}'

data modify storage ep:memory output_name set from block 29999999 0 29999999 Text1

setblock 29999999 0 29999999 minecraft:air
execute as @e[tag=ep.getter] run kill @s

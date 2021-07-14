# Gets the name for the item
summon item 29999999 0 29999999 {Tags: ['ep.memory.getter'], Item: {id: 'minecraft:stone', Count: 1b}}
data modify storage ep:memory temp set from entity @s data.item
execute as @e[tag=ep.memory.getter] run data modify entity @s Item set from storage ep:memory temp

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '', Text2: ''}
execute unless data storage ep:memory temp.tag.display.Name run data modify block 29999999 0 29999999 Text1 set value '{"selector": "@e[tag=ep.memory.getter, limit=1]", "color": "#7CFC00"}'
execute if data storage ep:memory temp.tag.display.Name run data modify block 29999999 0 29999999 Text1 set value '{"nbt": "temp.tag.display.Name", "storage": "ep:memory", "color": "#7CFC00", "italic": true, "interpret": true}'
data modify block 29999999 0 29999999 Text2 set value '{"selector": "@e[tag=ep.memory.getter, limit=1]", "color": "#7CFC00"}'

data modify storage ep:memory output_name set from block 29999999 0 29999999 Text1
data modify storage ep:memory output_raw_name set from block 29999999 0 29999999 Text2
setblock 29999999 0 29999999 minecraft:air

data remove storage ep:memory temp
kill @e[tag=ep.memory.getter]

# Gets the name for the item
summon item ~ ~ ~ {Tags: ['ep.memory.getter'], Item: {id: 'minecraft:stone', Count: 1b}}
data modify storage ep:memory temp set from entity @s ArmorItems[-1].tag.ctc.heap.owner
execute as @e[tag=ep.memory.getter] run data modify entity @s Item.tag.display.Name set from storage ep:memory temp

setblock ~ ~ ~ minecraft:oak_sign{Text1: '', Text2: ''}
#execute unless data storage ep:memory temp.tag.display.owner run data modify block ~ ~ ~ Text1 set value '{"selector": "@e[tag=ep.memory.getter, limit=1]", "color": "#32CD32"}'
data modify block ~ ~ ~ Text1 set value '{"nbt": "temp", "storage": "ep:memory", "color": "#C0C0C0"}'
#data modify block ~ ~ ~ Text2 set value '{"selector": "@e[tag=ep.memory.getter, limit=1]", "color": "#32CD32"}'

data modify storage ep:memory output_owner set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air

#data remove storage ep:memory temp
kill @e[tag=ep.memory.getter]

summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['ep.auction.getter']}
data modify entity @e[tag=ep.auction.getter, limit=1] Item set from storage ep:memory input_item

execute if data storage ep:memory input_item.tag.display.Name run setblock ~ ~ ~ minecraft:oak_sign{Text1: '{"nbt": "input_item.tag.display.Name", "storage": "ep:memory", "interpret": true}'}
execute unless data storage ep:memory input_item.tag.display.Name run setblock ~ ~ ~ minecraft:oak_sign{Text1: '{"selector": "@e[tag=ep.auction.getter, limit=1]"}'}

data modify storage ep:memory output_name set from block ~ ~ ~ Text1

setblock ~ ~ ~ minecraft:air
kill @e[tag=ep.auction.getter]

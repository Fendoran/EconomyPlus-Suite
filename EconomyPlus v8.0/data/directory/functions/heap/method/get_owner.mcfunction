# Gets the name for the item
data modify storage ep:memory temp set from entity @s data.owner

setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '', Text2: ''}
data modify block 29999999 0 29999999 Text1 set value '{"nbt": "temp", "storage": "ep:memory", "color": "#C0C0C0"}'

data modify storage ep:memory output_owner set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air

#data remove storage ep:memory temp
kill @e[tag=ep.memory.getter]

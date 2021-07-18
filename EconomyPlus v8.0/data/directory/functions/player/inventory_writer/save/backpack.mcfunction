setblock ~ ~ ~ minecraft:shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory backpack

loot replace entity @s inventory.0 27 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air

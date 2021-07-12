setblock ~ ~ ~ minecraft:shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory hotbar
loot replace entity @s hotbar.0 9 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air

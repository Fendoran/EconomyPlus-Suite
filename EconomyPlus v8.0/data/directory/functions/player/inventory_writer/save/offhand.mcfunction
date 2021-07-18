setblock ~ ~ ~ minecraft:shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory offhand
loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air

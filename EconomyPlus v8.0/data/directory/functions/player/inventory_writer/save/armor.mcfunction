setblock ~ ~ ~ minecraft:shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory armor
loot replace entity @s armor.feet 4 mine ~ ~ ~ minecraft:iron_pickaxe{ucit: {id: 'inventory_modifier'}}

setblock ~ ~ ~ minecraft:air

setblock ~ ~ ~ minecraft:yellow_shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory backpack

loot replace entity @s inventory.0 27 mine ~ ~ ~ minecraft:air{drop_contents:1b}

setblock ~ ~ ~ minecraft:air

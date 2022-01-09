setblock ~ ~ ~ minecraft:yellow_shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory hotbar
loot replace entity @s hotbar.0 9 mine ~ ~ ~ minecraft:air{drop_contents:1b}

setblock ~ ~ ~ minecraft:air

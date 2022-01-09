setblock ~ ~ ~ minecraft:yellow_shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory offhand
loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:air{drop_contents:1b}

setblock ~ ~ ~ minecraft:air

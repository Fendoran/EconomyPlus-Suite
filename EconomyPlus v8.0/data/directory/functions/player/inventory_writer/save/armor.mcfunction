setblock ~ ~ ~ minecraft:yellow_shulker_box

data modify block ~ ~ ~ Items set from storage ep:memory armor
loot replace entity @s armor.feet 4 mine ~ ~ ~ minecraft:air{drop_contents:1b}

setblock ~ ~ ~ minecraft:air

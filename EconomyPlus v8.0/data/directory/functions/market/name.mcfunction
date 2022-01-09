
item replace entity @s armor.head with ender_chest
data merge entity @s {CustomNameVisible:1b}

summon area_effect_cloud ~ ~ ~ {Tags:['ep.trait.broken_market_shop.hover'],CustomNameVisible:1b,Duration:20}

data modify storage ep:memory output_owner set from entity @s ArmorItems[-1].tag.owner
setblock 29999999 0 29999999 oak_sign{Text1:'[{"nbt":"output_owner","storage":"ep:memory","interpret":true},{"text":"\'s Shop"}]'} replace

data modify entity @e[type=area_effect_cloud,tag=ep.trait.broken_market_shop.hover,distance=..0.1,limit=1] CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air
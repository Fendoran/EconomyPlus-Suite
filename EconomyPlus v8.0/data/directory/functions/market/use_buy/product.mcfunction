setblock 29999999 5 29999999 shulker_box
setblock 29999999 6 29999999 shulker_box

data modify block 29999999 5 29999999 Items[] set from storage ep:memory output_item
execute store result block 29999999 5 29999999 Items[0].Count byte 1 run scoreboard players get #ep.total_quantity ep.variable

loot insert 29999999 6 29999999 mine 29999999 5 29999999 stick{ucit:{id:"inventory_modifier"}}
loot spawn ~ ~ ~ mine 29999999 6 29999999 stick{ucit:{id:"inventory_modifier"}}

setblock 29999999 5 29999999 air
setblock 29999999 6 29999999 air

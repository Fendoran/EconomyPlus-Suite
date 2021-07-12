## Due to a problem with stacks of items more than 127 not being supported, this function will loop through the amount of items, spawning a stack or less at a time

setblock 29999999 5 29999999 shulker_box
setblock 29999999 6 29999999 shulker_box

data modify block 29999999 5 29999999 Items[] set from storage ep:memory output_item
execute if score #ep.left_quantity ep.variable matches ..64 run function directory:market/pickup_under_65
execute if score #ep.left_quantity ep.variable matches 65.. run function directory:market/pickup_over_64

loot insert 29999999 6 29999999 mine 29999999 5 29999999 stick{ucit:{id:"inventory_modifier"}}
loot spawn ~ ~ ~ mine 29999999 6 29999999 stick{ucit:{id:"inventory_modifier"}}

setblock 29999999 5 29999999 air
setblock 29999999 6 29999999 air

function directory:market/check_full
execute if score #ep.left_quantity ep.variable matches 1.. if score #ep.check_full ep.variable matches 36.. run function directory:market/message/owner/no_inventory
execute if score #ep.left_quantity ep.variable matches 1.. if score #ep.check_full ep.variable matches ..35 run function directory:market/use_sell/owner/collect_loop

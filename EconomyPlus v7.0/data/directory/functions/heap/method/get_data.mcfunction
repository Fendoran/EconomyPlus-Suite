# Copys to storage shop data
data modify storage ep:memory output_item set from entity @s ArmorItems[-1].tag.ctc.heap.item
data modify storage ep:memory output_price set from entity @s ArmorItems[-1].tag.ctc.heap.price

function directory:heap/method/get_name
function directory:heap/method/get_quantity
function directory:heap/method/get_owner

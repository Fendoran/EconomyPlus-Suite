function directory:ram/clear
data modify storage ep:memory input_item set from entity @s Item
function directory:player_shop/method/get_name

summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['ep.player_shop.get_item']}
execute as @e[tag=ep.player_shop.get_item] run data modify entity @s Item set from storage ep:memory input_item
execute as @e[tag=ep.player_shop.get_item] run tag @s remove ep.player_shop.get_item

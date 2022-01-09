function directory:auction/init/item

summon item ~ ~ ~ {Tags: ['ep.auction.return_item'], Item: {id: 'minecraft:stone', Count: 1b}}
execute as @e[tag=ep.auction.return_item] run data modify entity @s Item set from storage ep:auction item
execute as @e[tag=ep.auction.return_item] run tag @s remove ep.auction.return_item

## Returns item to auction seller
# executor = auction seller
summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['ep.auction.reward']}
execute as @e[tag=ep.auction.reward] run data modify entity @s Item set from storage ep:auction item
tag @e[tag=ep.auction.reward] remove ep.auction.reward

function directory:auction/message/auction_end

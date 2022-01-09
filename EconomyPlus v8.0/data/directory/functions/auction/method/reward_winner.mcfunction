## Rewards the winner of the auction
# executor = auction winner
execute as @s[advancements={economy_plus:auction_win=false}] run advancement grant @s only economy_plus:auction_win

summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['ep.auction.reward']}
execute as @e[tag=ep.auction.reward] run data modify entity @s Item set from storage ep:auction item
tag @e[tag=ep.auction.reward] remove ep.auction.reward
function directory:auction/message/announce_winner

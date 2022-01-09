## Broadcast that an auction is up, and begins the auction
execute store result storage ep:auction highest_bidder.bid int 1 run scoreboard players get #ep.ui.value ep.variable
execute store result score #ep.item_count ep.variable run data get storage ep:auction item.Count


# Sets Item name up
execute store result score #ep.quantity ep.variable run data get entity @e[tag=ep.trait.auction_item,limit=1] Item.Count
execute if score #ep.quantity ep.variable matches 2.. run setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '[{"score": {"name": "#ep.quantity", "objective": "ep.variable"}, "color": "#808080"}, {"text": " ", "color": "#C0C0C0"}, {"nbt": "item.name", "storage": "ep:auction", "interpret": true, "color": "#32CD32"}]'}
execute if score #ep.quantity ep.variable matches 1 run setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '[{"nbt": "item.name", "storage": "ep:auction", "interpret": true, "color": "#32CD32"}]'}
data modify entity @e[tag=ep.trait.auction_item,limit=1] CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air

data merge entity @e[tag=ep.trait.auction_item,limit=1] {CustomNameVisible:1b}

scoreboard players operation #ep.auction.time ep.time = #ep.auction.auction_time ep.variable
execute store result bossbar ep:auction max run scoreboard players get #ep.auction.time ep.time
function directory:auction/message/auction_start

execute as @e[tag=ep.trait.auction_item] at @e[tag=ep.floater.auction] positioned ~ ~-1 ~ run tp @s ~ ~ ~

execute positioned 29999999 0 29999999 run function directory:auction/method/bossbar

function directory:auction/state/broadcast

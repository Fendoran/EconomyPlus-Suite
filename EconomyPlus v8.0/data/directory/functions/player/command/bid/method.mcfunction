## Player has bid on an auction
tag @s add ep.execute_context

## Return money to previous bidder
execute store result score #ep.uid0 ep.variable run data get storage ep:auction highest_bidder.uid0
execute store result score #ep.uid1 ep.variable run data get storage ep:auction highest_bidder.uid1
execute store result score #ep.uid2 ep.variable run data get storage ep:auction highest_bidder.uid2
execute store result score #ep.uid3 ep.variable run data get storage ep:auction highest_bidder.uid3
execute store result score #ep.previous_bid ep.variable run data get storage ep:auction highest_bidder.bid

execute unless data storage ep:auction highest_bidder{name: ''} as @a[tag=ep.player.init] at @s if score @s ep.uid0 = #ep.uid0 ep.variable if score @s ep.uid1 = #ep.uid1 ep.variable if score @s ep.uid2 = #ep.uid2 ep.variable if score @s ep.uid3 = #ep.uid3 ep.variable run function directory:auction/method/return_previous_bid

## Set a new higher bidder
execute store result storage ep:auction highest_bidder.uid0 int 1 run scoreboard players get @s ep.uid0
execute store result storage ep:auction highest_bidder.uid1 int 1 run scoreboard players get @s ep.uid1
execute store result storage ep:auction highest_bidder.uid2 int 1 run scoreboard players get @s ep.uid2
execute store result storage ep:auction highest_bidder.uid3 int 1 run scoreboard players get @s ep.uid3

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = #ep.new_bid ep.variable
function directory:transaction/transfer
scoreboard players operation @s ep.money = #ep.sender ep.money
execute store result storage ep:auction highest_bidder.bid int 1 run scoreboard players get #ep.receiver ep.money

setblock ~ ~ ~ minecraft:oak_sign{Text1: '{"selector": "@p[tag=ep.execute_context]"}'}
data modify storage ep:auction highest_bidder.name set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air
tag @s remove ep.execute_context

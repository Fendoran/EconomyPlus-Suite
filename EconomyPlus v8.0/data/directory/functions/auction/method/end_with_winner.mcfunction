## End the auction with a winner

# Find and work on seller
execute store result score #ep.uid0 ep.variable run data get storage ep:auction seller.uid0
execute store result score #ep.uid1 ep.variable run data get storage ep:auction seller.uid1
execute store result score #ep.uid2 ep.variable run data get storage ep:auction seller.uid2
execute store result score #ep.uid3 ep.variable run data get storage ep:auction seller.uid3
execute as @a[tag=ep.player.init] run function directory:uid/compare

execute as @a[tag=ep.pass_uuid_check] run function directory:auction/method/pay_seller

# Find and work on the Winner
execute store result score #ep.uid0 ep.variable run data get storage ep:auction highest_bidder.uid0
execute store result score #ep.uid1 ep.variable run data get storage ep:auction highest_bidder.uid1
execute store result score #ep.uid2 ep.variable run data get storage ep:auction highest_bidder.uid2
execute store result score #ep.uid3 ep.variable run data get storage ep:auction highest_bidder.uid3
execute store result score #ep.bid ep.variable run data get storage ep:auction highest_bidder.bid

execute as @a[tag=ep.player.init] run function directory:uid/compare
execute as @a[tag=ep.pass_uuid_check] at @s run function directory:auction/method/reward_winner

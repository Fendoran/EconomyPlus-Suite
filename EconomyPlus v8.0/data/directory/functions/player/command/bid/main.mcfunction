scoreboard players operation #ep.new_bid ep.variable = @s bid
execute store result score #ep.highest_bid ep.variable run data get storage ep:auction highest_bidder.bid
execute store result score #ep.auction_uid0 ep.variable run data get storage ep:auction seller.uid0
execute store result score #ep.auction_uid1 ep.variable run data get storage ep:auction seller.uid1
execute store result score #ep.auction_uid2 ep.variable run data get storage ep:auction seller.uid2
execute store result score #ep.auction_uid3 ep.variable run data get storage ep:auction seller.uid3

scoreboard players set #ep.bid_state ep.state 0

# check for Auction in progress
execute if score #ep.bid_state ep.state matches 0 unless score #ep.auction.state ep.state = #ep.enum.auction.broadcast ep.state run scoreboard players set #ep.bid_state ep.state 1
# check for nearby Auction floater
execute if score #ep.bid_state ep.state matches 0 unless entity @s[tag=ep.player.inside_floater.auction] run scoreboard players set #ep.bid_state ep.state 2
# check for negative bid
execute if score #ep.bid_state ep.state matches 0 if score #ep.new_bid ep.variable matches ..-1 run scoreboard players set #ep.bid_state ep.state 3
# check if bidder have the same UID as seller
execute if score #ep.bid_state ep.state matches 0 if score @s ep.uid0 = #ep.auction_uid0 ep.variable if score @s ep.uid1 = #ep.auction_uid1 ep.variable if score @s ep.uid2 = #ep.auction_uid2 ep.variable if score @s ep.uid3 = #ep.auction_uid3 ep.variable run scoreboard players set #ep.bid_state ep.state 4
# check if bidder have enough money
execute if score #ep.bid_state ep.state matches 0 if score @s ep.money < #ep.new_bid ep.variable run scoreboard players set #ep.bid_state ep.state 5
# check if new bid is lower than previous bid
execute if score #ep.bid_state ep.state matches 0 unless score #ep.new_bid ep.variable > #ep.highest_bid ep.variable run scoreboard players set #ep.bid_state ep.state 6

execute if score #ep.bid_state ep.state matches 1 run function directory:player/command/bid/message/no_auction
execute if score #ep.bid_state ep.state matches 2 run function directory:player/command/bid/message/invalid_location
execute if score #ep.bid_state ep.state matches 3 run function directory:player/command/bid/message/negative
execute if score #ep.bid_state ep.state matches 4 run function directory:player/command/bid/message/illegal
execute if score #ep.bid_state ep.state matches 5 run function directory:player/command/bid/message/money
execute if score #ep.bid_state ep.state matches 6 run function directory:player/command/bid/message/under
execute if score #ep.bid_state ep.state matches 0 run function directory:player/command/bid/message/over

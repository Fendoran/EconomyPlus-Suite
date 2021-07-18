#> Auction enum for /trigger auction command
# define entity #ep.enum.auction.idle
scoreboard players set #ep.enum.auction.idle ep.state 0
# define entity #ep.enum.auction.already_started
scoreboard players set #ep.enum.auction.already_started ep.state 1
# define entity #ep.enum.auction.invalid_location
scoreboard players set #ep.enum.auction.invalid_location ep.state 2

#> Auction enum for the auction system
# define entity #ep.enum.auction.init
scoreboard players set #ep.enum.auction.init ep.state 0
# define entity #ep.enum.auction.item
scoreboard players set #ep.enum.auction.item ep.state 4
# define entity #ep.enum.auction.min_bid
scoreboard players set #ep.enum.auction.min_bid ep.state 5
# define entity #ep.enum.auction.broadcast
scoreboard players set #ep.enum.auction.broadcast ep.state 6

#> Auction enum for the auction gui
# define entity #ep.enum.auction.item_not_found
scoreboard players set #ep.enum.auction.item_not_found ep.state 7
# define entity #ep.enum.auction.untradable_item
scoreboard players set #ep.enum.auction.untradable_item ep.state 8

## Adds 5 seconds to the auction countdown to allow time for other bidders
scoreboard players add #ep.auction.time ep.time 100
execute if score #ep.auction.time ep.time matches 1201.. run scoreboard players set #ep.auction.time ep.time 1200

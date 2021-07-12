execute if data storage ep:auction highest_bidder{name: ''} run function directory:auction/method/end_without_winner
execute unless data storage ep:auction highest_bidder{name: ''} run function directory:auction/method/end_with_winner

function directory:auction/clear/all
kill @e[tag=ep.trait.auction_item]

data remove storage ep:auction seller
data remove storage ep:auction highest_bidder
data remove storage ep:auction item

bossbar set ep:auction players

scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.idle ep.state
scoreboard players set #ep.auction.time ep.time -1

## Bid is over previous bid, aka successful bid
function directory:uid/get
execute positioned 29999999 0 29999999 run function directory:player/command/bid/method

tellraw @a [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"nbt": "highest_bidder.name", "storage": "ep:auction", "interpret": true, "color": "#ffffff"}, {"text": " bidded ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"nbt": "highest_bidder.bid", "storage": "ep:auction", "color": "#FFD700"}]

execute as @a at @s unless score @s ep.session = #ep.previous_bidder ep.session run playsound entity.experience_orb.pickup voice @s

advancement grant @s[advancements={economy_plus:auction_bid=false}] only economy_plus:auction_bid
function directory:auction/method/increase_time

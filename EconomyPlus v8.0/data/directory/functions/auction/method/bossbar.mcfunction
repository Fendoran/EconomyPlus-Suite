scoreboard players operation #ep.time_left ep.variable = #ep.auction.time ep.time
scoreboard players operation #ep.time_left ep.variable /= SECOND ep.variable

bossbar set ep:auction players @a
bossbar set ep:auction name [{"text": "Auction: ", "color": "red"}, {"score": {"name": "#ep.time_left", "objective": "ep.variable"}, "color": "#ffffff"}, {"text": "s", "color": "#ffffff"}, {"text": " - ", "color": "#C0C0C0"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"nbt": "highest_bidder.bid", "storage": "ep:auction", "interpret": true, "color": "#FFD700"}]
execute store result bossbar ep:auction value run scoreboard players get #ep.auction.time ep.time

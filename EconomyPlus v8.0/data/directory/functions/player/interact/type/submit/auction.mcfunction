## Determins which auction button was pressed
execute if entity @s[tag=ep.terminal.auction.item] run function directory:player/command/auction/item/ui/signal
execute if entity @s[tag=ep.terminal.auction.min_bid] run function directory:player/command/auction/min_bid/ui/signal

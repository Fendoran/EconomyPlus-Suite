## Begins the auction
# executor = player running the auction
tag @e[tag=ep.trait.auction_item] add ep.trait.in_auction
function directory:terminal/event/close_terminal
function directory:player/command/auction/broadcast

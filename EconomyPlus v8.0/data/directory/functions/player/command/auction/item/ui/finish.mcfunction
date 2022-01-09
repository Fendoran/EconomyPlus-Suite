## Finishes the auction ui element.
tag @s add ep.terminal.submit
tag @s add ep.dir.auction
tag @s add ep.terminal.auction.item
data modify entity @s CustomName set value '[{"text": "Auction Item", "color": "#C0C0C0"}, {"text": " (Right Click)", "color": "#32CD32"}]'
function directory:terminal/constructor/finalize

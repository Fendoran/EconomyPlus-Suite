scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.ui.sell
tag @s add ep.trait.market_formatted
scoreboard players set @s ep.variable 1
data modify entity @s CustomName set value '[{"text": "Sell", "color": "red"}]'
function directory:ui/constructor/finalize

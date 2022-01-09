scoreboard players operation @s ep.owner = #ep.target_uid ep.owner
tag @s add ep.trait.ui.submit
tag @s add ep.trait.ui.buy
tag @s add ep.trait.market_formatted
scoreboard players set @s ep.variable 0
data modify entity @s CustomName set value '[{"text": "Buy", "color": "blue"}]'
function directory:ui/constructor/finalize

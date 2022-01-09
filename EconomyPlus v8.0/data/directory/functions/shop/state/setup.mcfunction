execute if entity @s[tag=ep.trait.buyer] run function directory:buyer/state/setup
execute if entity @s[tag=ep.trait.seller] run function directory:seller/state/setup
execute if entity @s[tag=ep.trait.market] run function directory:market/state/setup

data modify block ~ ~ ~ Text2 set value '[{"nbt": "output_raw_name", "storage": "ep:memory", "color": "#7CFC00", "interpret": true}]'

scoreboard players operation @s ep.state = #ep.enum.sign.setup ep.state

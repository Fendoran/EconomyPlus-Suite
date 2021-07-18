tag @s add ep.target

execute unless entity @s[tag=ep.trait.market.sell] run data modify block ~ ~ ~ Text3 set value '[{"text": "x", "color": "#ffffff"}, {"storage": "ep:memory", "nbt": "output_quantity", "color": "#C0C0C0"}]'
execute if entity @s[tag=ep.trait.market.sell] run function directory:shop/draw/current_use_market_sell

tag @s remove ep.target

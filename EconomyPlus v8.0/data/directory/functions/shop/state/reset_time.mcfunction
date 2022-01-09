execute if score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/draw/hidden_use
execute unless score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/draw/current_use

# data modify block ~ ~ ~ Text3 set value '[{"text": "x", "color": "#ffffff"}, {"nbt": "output_quantity", "storage": "ep:memory"}, {"text": " "}, {"text": "(", "color": "#ffffff"}, {"score": {"name": "#ep.count", "objective": "ep.variable"}, "color": "#ffffff"}, {"text": ")", "color": "#ffffff"}]'

scoreboard players operation @s ep.state = #ep.enum.sign.reset_time ep.state

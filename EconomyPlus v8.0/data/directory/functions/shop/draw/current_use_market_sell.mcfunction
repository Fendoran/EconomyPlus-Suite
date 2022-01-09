scoreboard players operation #ep.variable ep.variable = @s ep.stored_money
scoreboard players operation #ep.variable ep.variable /= #ep.price ep.variable
data modify block ~ ~ ~ Text3 set value '[{"text": "x", "color": "#ffffff"}, {"storage": "ep:memory", "nbt": "output_quantity", "color": "#C0C0C0"}]'

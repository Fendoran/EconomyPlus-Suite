data modify block ~ ~ ~ Text3 set value '[{"text": "x", "color": "#ffffff"}, {"text": "0", "color": "dark_aqua", "underlined": true}]'

scoreboard players operation @s ep.state = #ep.enum.sign.quantity ep.state

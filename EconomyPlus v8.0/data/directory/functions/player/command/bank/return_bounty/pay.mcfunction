## Player has a bounty, and tries to pay it off
scoreboard players operation @s ep.money -= #ep.variable ep.variable
scoreboard players reset @s ep.bounty
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You payed off your bounty with ", "color": "#FFF954"}, {"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.variable", "objective": "ep.variable"}, "color": "#FFD700"}]
playsound block.note_block.pling voice @s

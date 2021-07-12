## Gives the player a bounty
scoreboard players operation @s ep.bounty += #ep.drop ep.variable
scoreboard players reset @s ep.bounty_time

function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You got a bounty of ", "color": "red"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.drop", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " placed on your head", "color": "red"}]
tellraw @a [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "},{"selector":"@s","color":"red"}, {"text": " now has a bounty of ", "color": "#ffffff"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "@s", "objective": "ep.bounty"}, "color": "#FFD700"}, {"text": " placed on their head", "color": "#ffffff"}]
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " You can pay this bounty off (plus a fee) in the bank settings.", "color": "red"}]
playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
scoreboard players reset @s ep.player_kill
execute if score #ep.bounty.blacklist ep.variable matches 1 run scoreboard players set @s ep.debt_state 3

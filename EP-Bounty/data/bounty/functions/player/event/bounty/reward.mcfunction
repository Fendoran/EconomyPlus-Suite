## Gives the player a monetary reward killing a player with a bounty
scoreboard players operation @s ep.money += @p[tag=ep.caster,scores={ep.bounty=1..}] ep.bounty
scoreboard players operation #ep.vault ep.variable -= @p[tag=ep.caster,scores={ep.bounty=1..}] ep.bounty
scoreboard players set @p[tag=ep.caster,scores={ep.bounty=1..}] ep.debt_state 3

function directory:tracker/currency/displace
title @s actionbar [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You collected a bounty reward of ", "color": "#32CD32"}, {"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.drop", "objective": "ep.variable"}, "color": "#FFD700"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
scoreboard players reset @s ep.player_kill

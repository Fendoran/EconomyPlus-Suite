execute if entity @e[type=area_effect_cloud,tag=ep.bank.sign.anchor,distance=..0.5] run tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "This terminal is already in use!", "color": "#FF3C26"}]
execute unless entity @e[type=area_effect_cloud,tag=ep.bank.sign.anchor,distance=..0.5] run function directory:player/command/bank/open_terminal
playsound entity.item.break voice @s

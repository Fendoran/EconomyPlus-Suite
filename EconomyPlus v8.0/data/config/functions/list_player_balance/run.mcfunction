tag @s add ep.config.runner

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Players Balance:", "color": "#C0C0C0"}]

execute as @a run function config:list_player_balance/player

tag @s remove ep.config.runner

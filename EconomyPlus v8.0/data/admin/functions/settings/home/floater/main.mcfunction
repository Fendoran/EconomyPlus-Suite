function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/floater/text/construct
execute positioned ^0.6 ^-0.4 ^ run function admin:settings/home/floater/shop/construct
execute positioned ^0.6 ^-0.8 ^ run function admin:settings/home/floater/spawn/construct
execute positioned ^0.6 ^-1.2000000000000002 ^ run function admin:settings/home/floater/auction/construct
execute positioned ^-0.6 ^-0.4 ^ run function admin:settings/home/floater/bank/construct
execute positioned ^-0.6 ^-0.8 ^ run function admin:settings/home/floater/remover/construct
execute positioned ^-0.5 ^-1.6 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-1.6 ^ run function admin:settings/home/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Floaters are entities that mark out an area, and have a display name.", "color": "#ffffff"}]

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "WARNING: If EconomyPlus: Travel isn't installed, you may need to replace some of the floaters for the travel locations to work.", "color": "#ff0000"}]

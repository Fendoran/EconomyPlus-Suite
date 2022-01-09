function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/signs/sell/text/construct
execute positioned ^ ^-0.75 ^ run function admin:settings/home/signs/sell/type/construct
execute positioned ^.7 ^-0.75 ^ run function admin:settings/home/signs/arrow/left/construct
execute positioned ^-.7 ^-0.75 ^ run function admin:settings/home/signs/arrow/right/construct
execute positioned ^-0.5 ^-1.6 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-1.6 ^ run function admin:settings/home/signs/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Choose a sell sign type.", "color": "#ffffff"}]

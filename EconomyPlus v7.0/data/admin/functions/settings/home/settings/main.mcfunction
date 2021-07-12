function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/settings/text/construct
execute positioned ^0 ^-0.3 ^ run function admin:settings/home/settings/money_display/construct
execute positioned ^0 ^-0.6 ^ run function admin:settings/home/settings/money_drop/construct
execute positioned ^0 ^-0.9 ^ run function admin:settings/home/settings/player_shop/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/teleports/construct
execute positioned ^0 ^-1.5 ^ run function admin:settings/home/settings/bank/construct
execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Settings contains the more in-depth admin settings.", "color": "#ffffff"}]

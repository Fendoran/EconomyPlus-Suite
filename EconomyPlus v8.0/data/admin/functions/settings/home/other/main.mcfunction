function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/other/text/construct
execute positioned ^0 ^-0.4 ^ run function admin:settings/home/other/trading_currency/construct
execute positioned ^0 ^-0.8 ^ run function admin:settings/home/other/list_player_balance/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/other/debug/construct
execute positioned ^0 ^-1.6 ^ run function admin:settings/home/other/uninstall/construct
execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Other are settings that don't fit anywhere else.", "color": "#ffffff"}]

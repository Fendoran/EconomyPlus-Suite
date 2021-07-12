function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/other/trading_currency/text/construct
execute positioned ^0 ^-0.4 ^ run function admin:settings/home/other/trading_currency/gold_coin/construct
execute positioned ^0 ^-0.8 ^ run function admin:settings/home/other/trading_currency/silver_coin/construct

execute positioned ^-0.5 ^-1.6 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-1.6 ^ run function admin:settings/home/other/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Gives an item for trading purposes.", "color": "#ffffff"}]

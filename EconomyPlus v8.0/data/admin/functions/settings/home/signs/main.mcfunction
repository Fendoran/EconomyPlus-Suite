function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/signs/text/construct
execute positioned ^0 ^-0.4 ^ run function admin:settings/home/signs/buy/construct
execute positioned ^0 ^-0.8 ^ run function admin:settings/home/signs/sell/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/signs/bank/construct


execute positioned ^-0.5 ^-1.6 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-1.6 ^ run function admin:settings/home/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Choose a sign type.  Buy/Sell are admin shops, Deposit/Bank are for the bank, and Loan/Credit are for debt management.", "color": "#ffffff"}]

function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/settings/money_drop/text/construct
execute positioned ^0 ^-0.3 ^ run function admin:settings/home/settings/money_drop/mobs/construct
execute positioned ^0 ^-0.6 ^ run function admin:settings/home/settings/money_drop/wood/construct
execute positioned ^0 ^-0.9 ^ run function admin:settings/home/settings/money_drop/ore/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/money_drop/farming/construct
execute positioned ^0 ^-1.5 ^ run function admin:settings/home/settings/money_drop/fishing/construct

execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/settings/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Money Drop determines from which sources money can be obtained.", "color": "#ffffff"}]

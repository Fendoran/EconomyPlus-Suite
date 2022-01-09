function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/settings/money_display/text/construct
execute positioned ^0 ^-0.3 ^ run function admin:settings/home/settings/money_display/sidebar/construct
execute positioned ^0 ^-0.6 ^ run function admin:settings/home/settings/money_display/list/construct
execute positioned ^0 ^-0.9 ^ run function admin:settings/home/settings/money_display/actionbar/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/money_display/below_name/construct

execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/settings/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Money Display determines where the player's currency is displayed.  (Note, actionbar can be turned off by the player)", "color": "#ffffff"}]

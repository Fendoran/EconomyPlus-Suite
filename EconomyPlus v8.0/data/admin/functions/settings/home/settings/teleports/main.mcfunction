function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/settings/teleports/text/construct
execute positioned ^0 ^-0.3 ^ run function admin:settings/home/settings/teleports/home/construct
execute positioned ^0 ^-0.6 ^ run function admin:settings/home/settings/teleports/shop/construct
execute positioned ^0 ^-0.9 ^ run function admin:settings/home/settings/teleports/bank/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/teleports/auction/construct
execute positioned ^0 ^-1.5 ^ run function admin:settings/home/settings/teleports/spawn/construct

execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/settings/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Teleports manages which teleports are enabled, how much they cost to use, and how long it takes for them to recharge.", "color": "#ffffff"}]

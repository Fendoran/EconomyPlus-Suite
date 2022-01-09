## Home UI
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/text/construct
execute positioned ^0 ^-0.4 ^ run function admin:settings/home/signs/construct
execute positioned ^0 ^-0.8 ^ run function admin:settings/home/floater/construct
#execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/other/construct
#execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
# This should be changed to an "exit" button
#execute positioned ^0.5 ^-2 ^ run function directory:terminal/ui/button/back/construct/admin_setting
tellraw @s[tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "The homepage for Admin settings.", "color": "#ffffff"}]

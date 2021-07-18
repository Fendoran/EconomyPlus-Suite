
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct

# Summons the cost UI
execute positioned ^0 ^0.17 ^ run function directory:terminal/ui/button/reset/construct
execute positioned ^0 ^-1.9 ^ run function directory:terminal/ui/button/back/construct
scoreboard players operation #ep.ui.value ep.variable = #ep.tax.interval ep.variable
execute positioned ^0 ^-1.10 ^ run function admin:settings/home/settings/bank/vault/tax/interval/construct

# Summons fancy number buttons

execute positioned ^-0.35 ^-1.6 ^ run function directory:terminal/ui/number/-1_minute/construct
execute positioned ^-0.35 ^-0.6 ^ run function directory:terminal/ui/number/1_minute/construct

execute positioned ^-0.15 ^-1.6 ^ run function directory:terminal/ui/number/-10_minute/construct
execute positioned ^-0.15 ^-0.6 ^ run function directory:terminal/ui/number/10_minute/construct

execute positioned ^0.15 ^-1.6 ^ run function directory:terminal/ui/number/-1_hour/construct
execute positioned ^0.15 ^-0.6 ^ run function directory:terminal/ui/number/1_hour/construct

execute positioned ^0.35 ^-1.6 ^ run function directory:terminal/ui/number/-10_hour/construct
execute positioned ^0.35 ^-0.6 ^ run function directory:terminal/ui/number/10_hour/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "This is how often player's income's are checked, and how often they are taxed.", "color": "#ffffff"}]

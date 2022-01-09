
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct

# Summons the cost UI
execute positioned ^0 ^0.17 ^ run function directory:terminal/ui/button/reset/construct
execute positioned ^0 ^-1.9 ^ run function admin:settings/home/settings/bank/vault/back/construct
scoreboard players operation #ep.ui.value ep.variable = #ep.vault_pay_interest ep.variable
execute positioned ^0 ^-0.83 ^ run function admin:settings/home/settings/bank/vault/interest/min_vault/construct

# Summons fancy number buttons
execute positioned ^-0.57 ^0.34 ^ run function directory:terminal/ui/number/1/construct
execute positioned ^0.57 ^0.34 ^ run function directory:terminal/ui/number/-1/construct

execute positioned ^-1.02 ^-0.02 ^ run function directory:terminal/ui/number/10/construct
execute positioned ^1.02 ^-0.02 ^ run function directory:terminal/ui/number/-10/construct

execute positioned ^-1.27 ^-0.54 ^ run function directory:terminal/ui/number/100/construct
execute positioned ^1.27 ^-0.54 ^ run function directory:terminal/ui/number/-100/construct

execute positioned ^-1.27 ^-1.12 ^ run function directory:terminal/ui/number/500/construct
execute positioned ^1.27 ^-1.12 ^ run function directory:terminal/ui/number/-500/construct

execute positioned ^-1.02 ^-1.64 ^ run function directory:terminal/ui/number/1000/construct
execute positioned ^1.02 ^-1.64 ^ run function directory:terminal/ui/number/-1000/construct

execute positioned ^-0.57 ^-2.00 ^ run function directory:terminal/ui/number/10000/construct
execute positioned ^0.57 ^-2.00 ^ run function directory:terminal/ui/number/-10000/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "The amount the vault needs before giving out bank interest.", "color": "#ffffff"}]

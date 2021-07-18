
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct

# Summons the cost UI
execute positioned ^0 ^-1.9 ^ run function directory:terminal/ui/button/back/construct
scoreboard players operation #ep.ui.value ep.variable = #ep.prevent_seller_if_empty ep.variable
execute positioned ^0 ^-0.83 ^ run function admin:settings/home/settings/bank/vault/vault/stop_selling/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Prevents players from selling to the shop if doing so will cause it to drop below the minimum.", "color": "#ffffff"}]

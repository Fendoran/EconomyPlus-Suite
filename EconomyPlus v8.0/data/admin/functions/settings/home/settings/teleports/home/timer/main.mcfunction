
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct

# Summons the cost UI
execute positioned ^0 ^0.17 ^ run function directory:terminal/ui/button/reset/construct
execute positioned ^0 ^-1.9 ^ run function admin:settings/home/settings/teleports/home/cost/back/construct
scoreboard players operation #ep.ui.value ep.variable = #ep.terminal.teleport_cooldown2 ep.variable
execute positioned ^0 ^-1.10 ^ run function admin:settings/home/settings/teleports/home/timer/construct

# Summons fancy number buttons

execute positioned ^-0.35 ^-1.6 ^ run function directory:terminal/ui/number/-1_minute/construct
execute positioned ^-0.35 ^-0.6 ^ run function directory:terminal/ui/number/1_minute/construct

execute positioned ^-0.15 ^-1.6 ^ run function directory:terminal/ui/number/-10_minute/construct
execute positioned ^-0.15 ^-0.6 ^ run function directory:terminal/ui/number/10_minute/construct

execute positioned ^0.15 ^-1.6 ^ run function directory:terminal/ui/number/-1_hour/construct
execute positioned ^0.15 ^-0.6 ^ run function directory:terminal/ui/number/1_hour/construct

execute positioned ^0.35 ^-1.6 ^ run function directory:terminal/ui/number/-10_hour/construct
execute positioned ^0.35 ^-0.6 ^ run function directory:terminal/ui/number/10_hour/construct

## Pay UI
execute positioned ^0 ^1 ^ run function directory:terminal/ui/button/reset/construct
execute positioned ^0 ^-1 ^ run function directory:terminal/ui/button/max/construct
scoreboard players operation #ep.ui.value ep.variable = #ep.ui.default ep.variable
execute positioned ^0 ^0 ^ run function directory:player/command/pay/ui/construct

execute positioned ^-0.57 ^1.17 ^ run function directory:terminal/ui/number/1/construct
execute positioned ^0.57 ^1.17 ^ run function directory:terminal/ui/number/-1/construct

execute positioned ^-1.02 ^0.81 ^ run function directory:terminal/ui/number/10/construct
execute positioned ^1.02 ^0.81 ^ run function directory:terminal/ui/number/-10/construct

execute positioned ^-1.27 ^0.29 ^ run function directory:terminal/ui/number/100/construct
execute positioned ^1.27 ^0.29 ^ run function directory:terminal/ui/number/-100/construct

execute positioned ^-1.27 ^-0.29 ^ run function directory:terminal/ui/number/500/construct
execute positioned ^1.27 ^-0.29 ^ run function directory:terminal/ui/number/-500/construct

execute positioned ^-1.02 ^-0.81 ^ run function directory:terminal/ui/number/1000/construct
execute positioned ^1.02 ^-0.81 ^ run function directory:terminal/ui/number/-1000/construct

execute positioned ^-0.57 ^-1.17 ^ run function directory:terminal/ui/number/10000/construct
execute positioned ^0.57 ^-1.17 ^ run function directory:terminal/ui/number/-10000/construct

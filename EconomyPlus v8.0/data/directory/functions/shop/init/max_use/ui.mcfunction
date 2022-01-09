execute positioned ^0 ^-1 ^ run function directory:ui/item/button/back
execute positioned ^0 ^1 ^ run function directory:ui/item/button/reset

scoreboard players operation #ep.ui.value ep.variable = @s ep.max_use
execute positioned ^ ^ ^ run function directory:ui/item/submit/max_use

execute positioned ^0.57 ^1.17 ^ run function directory:ui/item/number/-1
execute positioned ^-0.57 ^1.17 ^ run function directory:ui/item/number/1

execute positioned ^1.02 ^0.81 ^ run function directory:ui/item/number/-5
execute positioned ^-1.02 ^0.81 ^ run function directory:ui/item/number/5

execute positioned ^1.27 ^0.29 ^ run function directory:ui/item/number/-10
execute positioned ^-1.27 ^0.29 ^ run function directory:ui/item/number/10

execute positioned ^1.27 ^-0.29 ^ run function directory:ui/item/number/-25
execute positioned ^-1.27 ^-0.29 ^ run function directory:ui/item/number/25

execute positioned ^1.02 ^-0.81 ^ run function directory:ui/item/number/-100
execute positioned ^-1.02 ^-0.81 ^ run function directory:ui/item/number/100

execute positioned ^0.57 ^-1.17 ^ run function directory:ui/item/number/-250
execute positioned ^-0.57 ^-1.17 ^ run function directory:ui/item/number/250

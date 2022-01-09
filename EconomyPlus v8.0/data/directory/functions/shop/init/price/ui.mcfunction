execute positioned ^0 ^-1 ^ run function directory:ui/item/button/back
execute positioned ^0 ^1 ^ run function directory:ui/item/button/reset

scoreboard players operation #ep.ui.value ep.variable = @s ep.money
execute positioned ^ ^ ^ run function directory:ui/item/submit/price

execute positioned ^0.57 ^1.17 ^ run function directory:ui/item/number/-1
execute positioned ^-0.57 ^1.17 ^ run function directory:ui/item/number/1

execute positioned ^1.02 ^0.81 ^ run function directory:ui/item/number/-10
execute positioned ^-1.02 ^0.81 ^ run function directory:ui/item/number/10

execute positioned ^1.27 ^0.29 ^ run function directory:ui/item/number/-100
execute positioned ^-1.27 ^0.29 ^ run function directory:ui/item/number/100

execute positioned ^1.27 ^-0.29 ^ run function directory:ui/item/number/-500
execute positioned ^-1.27 ^-0.29 ^ run function directory:ui/item/number/500

execute positioned ^1.02 ^-0.81 ^ run function directory:ui/item/number/-1000
execute positioned ^-1.02 ^-0.81 ^ run function directory:ui/item/number/1000

execute positioned ^0.57 ^-1.17 ^ run function directory:ui/item/number/-10000
execute positioned ^-0.57 ^-1.17 ^ run function directory:ui/item/number/10000

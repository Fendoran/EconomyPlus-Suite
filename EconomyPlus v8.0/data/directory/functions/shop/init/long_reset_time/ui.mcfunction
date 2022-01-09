execute positioned ^0 ^-1 ^ run function directory:ui/item/button/back
execute positioned ^0 ^1 ^ run function directory:ui/item/button/reset

scoreboard players operation #ep.ui.value ep.variable = @s ep.reset_time
execute positioned ^ ^-0.2 ^ run function directory:ui/item/submit/long_reset_time

execute positioned ^-0.35 ^-0.7 ^ run function directory:ui/item/number/-1_hour
execute positioned ^-0.35 ^0.3 ^ run function directory:ui/item/number/1_hour

execute positioned ^-0.15 ^-0.7 ^ run function directory:ui/item/number/-10_hour
execute positioned ^-0.15 ^0.3 ^ run function directory:ui/item/number/10_hour

execute positioned ^0.15 ^-0.7 ^ run function directory:ui/item/number/-1_day
execute positioned ^0.15 ^0.3 ^ run function directory:ui/item/number/1_day

execute positioned ^0.35 ^-0.7 ^ run function directory:ui/item/number/-10_day
execute positioned ^0.35 ^0.3 ^ run function directory:ui/item/number/10_day

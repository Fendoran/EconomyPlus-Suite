execute positioned ^0 ^-1 ^ run function directory:ui/item/button/back
execute positioned ^0 ^1 ^ run function directory:ui/item/button/reset

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:ram/clear
function directory:heap/get/quantity
execute if data storage ep:memory output_quantity store result score #ep.ui.value ep.variable run data get storage ep:memory output_quantity
execute unless data storage ep:memory output_quantity run scoreboard players operation #ep.ui.value ep.variable = #ep.ui.default ep.variable
execute positioned ^ ^ ^ run function directory:ui/item/submit/quantity

execute positioned ^0.57 ^1.17 ^ run function directory:ui/item/number/-1
execute positioned ^-0.57 ^1.17 ^ run function directory:ui/item/number/1

execute positioned ^1.02 ^0.81 ^ run function directory:ui/item/number/-4
execute positioned ^-1.02 ^0.81 ^ run function directory:ui/item/number/4

execute positioned ^1.27 ^0.29 ^ run function directory:ui/item/number/-8
execute positioned ^-1.27 ^0.29 ^ run function directory:ui/item/number/8

execute positioned ^1.27 ^-0.29 ^ run function directory:ui/item/number/-16
execute positioned ^-1.27 ^-0.29 ^ run function directory:ui/item/number/16

execute positioned ^1.02 ^-0.81 ^ run function directory:ui/item/number/-32
execute positioned ^-1.02 ^-0.81 ^ run function directory:ui/item/number/32

execute positioned ^0.57 ^-1.17 ^ run function directory:ui/item/number/-64
execute positioned ^-0.57 ^-1.17 ^ run function directory:ui/item/number/64

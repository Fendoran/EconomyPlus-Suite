
function directory:ram/clear
execute positioned ^ ^-0.25 ^ run function directory:ui/item/submit/buy

execute positioned ^.5 ^-0.25 ^ run function directory:ui/item/button/left_arrow
execute positioned ^-.5 ^-0.25 ^ run function directory:ui/item/button/right_arrow
execute positioned ^0 ^-1 ^ run function directory:ui/item/button/exit

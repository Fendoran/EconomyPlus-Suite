#scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:ram/clear
execute positioned ^ ^-0.25 ^ run function directory:ui/item/submit/normal
execute positioned ^.75 ^-0.25 ^ run function directory:ui/item/button/left_arrow
execute positioned ^-.75 ^-0.25 ^ run function directory:ui/item/button/right_arrow

execute positioned ^0 ^-1 ^ run function directory:ui/item/button/exit

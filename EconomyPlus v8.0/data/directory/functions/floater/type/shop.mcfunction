execute if entity @s[tag=ep.floater.spawning] run function directory:floater/type/shop/spawned

# define tag ep.player.inside_floater
execute as @a[tag=!ep.player.inside_floater.shop, tag=!global.ignore, distance=..25] at @s run function directory:tracker/area/event/enter_floater/shop

# function directory:floater/visualize
function directory:floater/type/shop/display

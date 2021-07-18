function directory:ui/constructor/new
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/long_reset_time

execute positioned ~ ~0.85 ~ run function directory:ui/constructor/static
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/long_reset_time_static

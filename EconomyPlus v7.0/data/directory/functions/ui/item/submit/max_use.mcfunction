function directory:ui/constructor/new
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/max_use

execute positioned ~ ~0.25 ~ run function directory:ui/constructor/static
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/max_use_static

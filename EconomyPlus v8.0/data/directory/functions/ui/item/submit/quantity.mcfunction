function directory:ui/constructor/new
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/quantity

execute positioned ~ ~0.25 ~ run function directory:ui/constructor/static
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/quantity_static

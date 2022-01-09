function directory:ui/constructor/new
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/price

execute positioned ~ ~0.25 ~ run function directory:ui/constructor/static
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run function directory:ui/item/builder/submit/price_static

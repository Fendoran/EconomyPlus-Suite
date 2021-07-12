# define tag ep.trait.shop
# define tag ep.trait.seller
summon area_effect_cloud ~ ~ ~ {Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.shop', 'ep.trait.seller', 'ep.spawning','ep.trait.unstable'], Age: 0, Duration: 2}
execute as @e[tag=ep.spawning] run function directory:seller/constructor/builder

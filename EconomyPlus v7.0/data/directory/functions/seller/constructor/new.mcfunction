# define tag ep.trait.shop
# define tag ep.trait.seller
summon marker ~ ~ ~ {Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.shop', 'ep.trait.seller', 'ep.spawning','ep.trait.unstable']}
execute as @e[tag=ep.spawning] run function directory:seller/constructor/builder

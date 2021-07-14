# define tag ep.trait.shop
# define tag ep.trait.buyer
summon marker ~ ~ ~ {Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.shop', 'ep.trait.market', 'ep.spawning','ep.trait.unstable']}
execute as @e[tag=ep.spawning] run function directory:market/constructor/builder

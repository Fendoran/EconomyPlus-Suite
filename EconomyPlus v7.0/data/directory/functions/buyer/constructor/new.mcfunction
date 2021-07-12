# define tag ep.trait.shop
# define tag ep.trait.buyer
summon area_effect_cloud ~ ~ ~ {Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.shop', 'ep.trait.buyer', 'ep.spawning','ep.trait.unstable'], Age: 0, Duration: 2}
execute as @e[tag=ep.spawning] run function directory:buyer/constructor/builder

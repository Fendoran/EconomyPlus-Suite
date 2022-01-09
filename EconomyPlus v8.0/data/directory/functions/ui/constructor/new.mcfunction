# define tag ep.trait.ui
summon area_effect_cloud ~ ~ ~ {Age: 0, Duration: 2147483647, CustomNameVisible: 1b, Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.ui', 'ep.spawning'], Passengers: [{id: 'minecraft:villager', NoAI: 1b, Invulnerable: 1b, NoGravity: 1b, ActiveEffects: [{Id: 14, Duration: 2147483647, ShowParticles: 0b}], Silent: 1b, Tags: ['ep.trait.ui_child'] }]}
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run scoreboard players operation @s ep.session = #ep.target_uid ep.session
execute as @e[tag=ep.trait.ui_child, distance=..0.3] run scoreboard players operation @s ep.session = #ep.target_uid ep.session
execute as @e[tag=ep.trait.ui_child, distance=..0.3] run scoreboard players operation @s ep.owner = #ep.target_uid ep.owner

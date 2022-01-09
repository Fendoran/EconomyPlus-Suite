summon area_effect_cloud ~ ~ ~ {Age: 0, Duration: 2147483647, CustomNameVisible: 1b, Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.ui', 'ep.spawning']}
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run scoreboard players operation @s ep.session = #ep.target_uid ep.session
execute as @e[tag=ep.trait.ui, tag=ep.spawning] run scoreboard players operation @s ep.owner = #ep.target_uid ep.owner

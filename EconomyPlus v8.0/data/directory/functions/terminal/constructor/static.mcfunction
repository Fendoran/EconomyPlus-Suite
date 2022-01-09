summon area_effect_cloud ~ ~ ~ {Age: 0, Duration: 2147483647, CustomNameVisible: 1b, Tags: ['global.ignore', 'global.ignore.pos', 'ep.trait.terminal', 'ep.spawning']}
execute as @e[tag=ep.trait.terminal, tag=ep.spawning] run scoreboard players operation @s ep.session = #ep.target_uid ep.session

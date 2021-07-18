summon armor_stand 29999999 0 29999999 {Tags: ['global.ignore', 'global.ignore.pos', 'ep.memory.heap', 'ep.spawning'], NoGravity: 1b, Invulnerable: 1b, Marker: 1b, Small: 1b, Invisible: 1b}
execute as @e[tag=ep.memory.heap, tag=ep.spawning] run scoreboard players operation @s ep.session = #ep.target_uid ep.session
execute as @e[tag=ep.memory.heap, tag=ep.spawning] run loot replace entity @s armor.head loot directory:class/heap
tag @e[tag=ep.memory.heap, tag=ep.spawning] remove ep.spawning

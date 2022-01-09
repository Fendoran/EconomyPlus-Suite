
tag @s remove ep.in_spawn
execute if score #X ep.variable > #minSpawnX ep.variable if score #X ep.variable < #maxSpawnX ep.variable if score #Y ep.variable > #minSpawnY ep.variable if score #Y ep.variable < #maxSpawnY ep.variable if score #Z ep.variable > #minSpawnZ ep.variable if score #Z ep.variable < #maxSpawnZ ep.variable run tag @s add ep.in_spawn

gamemode adventure @s[gamemode=survival,tag=ep.in_spawn]
gamemode survival @s[gamemode=adventure,tag=!ep.in_spawn]
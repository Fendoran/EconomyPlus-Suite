execute if entity @s[tag=ep.floater.spawning] run function directory:floater/type/spawn/spawned

function directory:floater/type/spawn/display

execute store result score #minSpawnX ep.variable run data get entity @s Pos[0]
execute store result score #maxSpawnX ep.variable run data get entity @s Pos[0]
execute store result score #minSpawnY ep.variable run data get entity @s Pos[1]
execute store result score #maxSpawnY ep.variable run data get entity @s Pos[1]
execute store result score #minSpawnZ ep.variable run data get entity @s Pos[2]
execute store result score #maxSpawnZ ep.variable run data get entity @s Pos[2]

scoreboard players operation #minSpawnX ep.variable -= #ep.config.SpawnProtectionX ep.config
scoreboard players operation #maxSpawnX ep.variable += #ep.config.SpawnProtectionX ep.config

scoreboard players operation #minSpawnY ep.variable -= #ep.config.SpawnProtectionY ep.config
scoreboard players operation #maxSpawnY ep.variable += #ep.config.SpawnProtectionY ep.config

scoreboard players operation #minSpawnZ ep.variable -= #ep.config.SpawnProtectionZ ep.config
scoreboard players operation #maxSpawnZ ep.variable += #ep.config.SpawnProtectionZ ep.config


execute if score #ep.config.SetWorldSpawn ep.config matches 1 run setworldspawn ~ ~ ~
execute if score #ep.config.SpawnProtectionX ep.config matches 1.. if score #ep.config.SpawnProtectionZ ep.config matches 1.. as @a run function directory:floater/type/spawn/protection
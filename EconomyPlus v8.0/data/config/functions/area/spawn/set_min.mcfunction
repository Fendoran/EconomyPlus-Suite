## Sets minimum coordinates for spawn selection
execute as @s store result score #ep.spawn.x.min ep.variable run data get entity @s Pos[0]
execute as @s store result score #ep.spawn.y.min ep.variable run data get entity @s Pos[1]
execute as @s store result score #ep.spawn.z.min ep.variable run data get entity @s Pos[2]
tellraw @s [{"text":"Spawn minimum coordinates set to: "},{"score":{"name":"@s","objective":"ep.position.x"}},{"text":" "},{"score":{"name":"@s","objective":"ep.position.y"}},{"text":" "},{"score":{"name":"@s","objective":"ep.position.z"}}]

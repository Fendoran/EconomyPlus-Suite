## Sets maximum coordinates for spawn selection
execute as @s store result score #ep.spawn.x.max ep.variable run data get entity @s Pos[0]
execute as @s store result score #ep.spawn.y.max ep.variable run data get entity @s Pos[1]
execute as @s store result score #ep.spawn.z.max ep.variable run data get entity @s Pos[2]
tellraw @s [{"text":"Spawn maximum coordinates set to: "},{"score":{"name":"@s","objective":"ep.position.x"}},{"text":" "},{"score":{"name":"@s","objective":"ep.position.y"}},{"text":" "},{"score":{"name":"@s","objective":"ep.position.z"}}]

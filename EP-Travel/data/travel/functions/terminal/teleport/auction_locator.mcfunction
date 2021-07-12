execute store result entity @s Pos[0] double 1 run scoreboard players get #ep.auction.x ep.variable
execute store result entity @s Pos[1] double 1 run scoreboard players get #ep.auction.y ep.variable
execute store result entity @s Pos[2] double 1 run scoreboard players get #ep.auction.z ep.variable
execute at @s positioned ~0.5 ~1.5 ~0.5 as @a[tag=ep.trait.teleported] run function directory:terminal/event/teleported
kill @s

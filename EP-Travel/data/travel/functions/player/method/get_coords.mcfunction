## When ran at the player (or any entity for that matter) it gets the coords and stores in ep.position.x and so on
execute store result score @s ep.position.x run data get entity @s Pos[0]
execute store result score @s ep.position.y run data get entity @s Pos[1]
execute store result score @s ep.position.z run data get entity @s Pos[2]

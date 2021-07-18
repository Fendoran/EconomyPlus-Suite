execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run tp @s ~ ~ ~ 0 ~
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run tp @s ~ ~ ~ 90 ~
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run tp @s ~ ~ ~ 180 ~
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run tp @s ~ ~ ~ 270 ~

execute if block ~ ~ ~ #minecraft:standing_signs[rotation=0] run tp @s ~ ~ ~ 0 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=1] run tp @s ~ ~ ~ 22.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=2] run tp @s ~ ~ ~ 45 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=3] run tp @s ~ ~ ~ 67.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=4] run tp @s ~ ~ ~ 90 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=5] run tp @s ~ ~ ~ 112.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=6] run tp @s ~ ~ ~ 135 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=7] run tp @s ~ ~ ~ 157.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=8] run tp @s ~ ~ ~ 180 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=9] run tp @s ~ ~ ~ 202.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=10] run tp @s ~ ~ ~ 225 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=11] run tp @s ~ ~ ~ 247.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=12] run tp @s ~ ~ ~ 270 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=13] run tp @s ~ ~ ~ 292.5 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=14] run tp @s ~ ~ ~ 315 ~
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=15] run tp @s ~ ~ ~ 337.5 ~

scoreboard players operation @s ep.state = #ep.enum.sign.init ep.state

## The Timer node runs the following commands
execute as @a[tag=ep.caster] run scoreboard players operation #ep.cooldown ep.variable = @s ep.tp_cooldown5

execute if score #ep.cooldown ep.variable matches 1.. in overworld run function directory:terminal/method/formatted_time
execute if score #ep.cooldown ep.variable matches 0 in overworld run function travel:player/command/travel/ui/construct/market/format
function directory:terminal/node/general

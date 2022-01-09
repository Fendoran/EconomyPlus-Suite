## Constructs the min bid UI submit button
function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/auction/min_bid/ui/finish

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function directory:player/command/auction/min_bid/ui/text

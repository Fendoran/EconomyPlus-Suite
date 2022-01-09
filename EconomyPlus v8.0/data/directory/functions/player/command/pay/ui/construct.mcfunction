function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/pay/ui/finish

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function directory:player/command/pay/ui/text

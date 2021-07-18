## Constructs UI submit element
function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/autopay/ui/finish

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function directory:player/command/autopay/ui/text

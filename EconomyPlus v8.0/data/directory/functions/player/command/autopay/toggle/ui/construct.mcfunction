## Constructs UI submit element
execute positioned ^.5 ^-.25 ^ run function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/autopay/toggle/ui/finish_yes

execute positioned ^-.5 ^-.25 ^ run function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/autopay/toggle/ui/finish_no

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function directory:player/command/autopay/toggle/ui/text

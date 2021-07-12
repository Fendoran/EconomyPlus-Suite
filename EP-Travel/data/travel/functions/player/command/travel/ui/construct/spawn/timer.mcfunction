# Creates timer1 button
function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function travel:player/command/travel/ui/construct/spawn/finish_timer

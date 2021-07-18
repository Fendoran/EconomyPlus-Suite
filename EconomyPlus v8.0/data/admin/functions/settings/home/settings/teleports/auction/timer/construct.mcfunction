# Creates loan submit button
function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/teleports/auction/timer/finish

execute positioned ~ ~0.85 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/teleports/auction/timer/text

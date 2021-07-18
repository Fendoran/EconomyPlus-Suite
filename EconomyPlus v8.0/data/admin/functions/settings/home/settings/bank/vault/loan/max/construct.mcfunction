# Creates loan submit button
function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/bank/vault/loan/max/finish

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/bank/vault/loan/max/text

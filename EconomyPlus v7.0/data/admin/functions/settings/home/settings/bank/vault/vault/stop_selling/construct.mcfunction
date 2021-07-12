# Creates loan submit button
execute positioned ^-.5 ^ ^ run function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/bank/vault/vault/stop_selling/finish_enabled
execute positioned ^.5 ^ ^ run function directory:terminal/constructor/new
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/bank/vault/vault/stop_selling/finish_disabled

execute positioned ~ ~0.25 ~ run function directory:terminal/constructor/static
execute as @e[tag=ep.spawning] run function admin:settings/home/settings/bank/vault/vault/stop_selling/text

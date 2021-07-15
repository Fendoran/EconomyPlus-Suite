execute if entity @s[tag=ep.floater.shop] run function directory:floater/type/shop
execute if entity @s[tag=ep.floater.spawn] run function directory:floater/type/spawn
execute if entity @s[tag=ep.floater.auction] run function directory:floater/type/auction
execute if entity @s[tag=ep.floater.bank] run function directory:floater/type/bank
execute if entity @s[tag=ep.floater.market] run function directory:floater/type/market
execute if entity @s[tag=ep.floater.remover] run function directory:floater/type/remover

execute if entity @s[tag=ep.floater.spawning] run function directory:floater/spawned
tag @s remove ep.floater.spawning

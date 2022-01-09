## This is the floating chest entity if the player shop has been broken
scoreboard players add @s ep.debt 1
function directory:uid/get

scoreboard players operation #ep.target_uid ep.session = @s ep.session
scoreboard players operation #ep.use ep.variable = @s ep.use
scoreboard players operation #ep.price ep.variable = @s ep.stored_money
execute as @a[distance=..15] run function directory:uid/compare
execute if entity @a[tag=ep.pass_uuid_check,distance=..0.5] run function directory:market/owner_pickup


tp @s[nbt={OnGround:1b}] ~ ~ ~ ~5 ~
data merge entity @s[nbt={OnGround:1b}] {NoGravity:1b}
execute if entity @a[tag=ep.pass_uuid_check] if entity @s[nbt={NoGravity:1b}] positioned ~ ~1.7 ~ unless entity @e[type=area_effect_cloud,tag=ep.trait.broken_market_shop.hover,distance=..0.1,limit=1] run function directory:market/name
execute unless entity @a[tag=ep.pass_uuid_check] run item replace entity @s armor.head with air
execute unless entity @a[tag=ep.pass_uuid_check] run data merge entity @s {CustomNameVisible:0b}


tag @a remove ep.pass_uuid_check

execute if score @s ep.debt >= #ep.MarketSignFloaterDespawn ep.config if score #ep.MarketSignFloaterDespawn ep.config matches 1.. run kill @s
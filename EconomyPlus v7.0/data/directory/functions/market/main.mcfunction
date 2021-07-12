## This is the floating chest entity if the player shop has been broken
function directory:uid/get

scoreboard players operation #ep.target_uid ep.session = @s ep.session
scoreboard players operation #ep.use ep.variable = @s ep.use
scoreboard players operation #ep.price ep.variable = @s ep.stored_money
execute as @p[distance=..0.5] run function directory:uid/compare
execute if entity @a[tag=ep.pass_uuid_check] run function directory:market/owner_pickup
tag @a remove ep.pass_uuid_check

tp @s[nbt={OnGround:1b}] ~ ~ ~ ~5 ~
data merge entity @s[nbt={OnGround:1b}] {NoGravity:1b}
execute if entity @s[nbt={NoGravity:1b}] positioned ~ ~1.7 ~ unless entity @e[type=area_effect_cloud,tag=ep.trait.broken_market_shop.hover,distance=..0.1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:['ep.trait.broken_market_shop.hover'],CustomNameVisible:1b,Duration:20,CustomName:'{"text":"Player Shop","color":"#C0C0C0"}'}

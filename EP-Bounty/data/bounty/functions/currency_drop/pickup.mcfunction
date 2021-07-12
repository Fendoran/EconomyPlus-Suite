tag @p[tag=ep.player.init, distance=..1] add ep.caster

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = @a[tag=ep.caster] ep.money
scoreboard players operation #ep.transaction ep.money = @s ep.money
function directory:transaction/transfer
scoreboard players operation @s ep.money = #ep.sender ep.money
scoreboard players operation @a[tag=ep.caster] ep.money = #ep.receiver ep.money

function directory:uid/get
execute as @a[tag=ep.caster] run function bounty:currency_drop/message/pickup

kill @s
kill @e[tag=ep.trait.currency_drop_name,sort=nearest,limit=1]
tag @a[tag=ep.caster] remove ep.caster

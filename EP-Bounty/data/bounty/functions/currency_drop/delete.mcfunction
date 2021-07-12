## Remove the death drop
function directory:uid/get
execute as @a[tag=ep.player.init,advancements={economy_plus:death_lost=false}] run function directory:uid/compare
advancement grant @a[tag=ep.pass_uuid_check] only economy_plus:death_lost
tag @a remove ep.pass_uuid_check
scoreboard players operation #ep.vault ep.variable += @s ep.money
kill @e[tag=ep.trait.currency_drop_name,sort=nearest,limit=1]
kill @s

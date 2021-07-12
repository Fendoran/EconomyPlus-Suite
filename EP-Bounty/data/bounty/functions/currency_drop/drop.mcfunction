tag @p[tag=ep.player.init, scores={ep.death=1..}] add ep.caster

scoreboard players operation #ep.drop ep.variable = @a[tag=ep.caster] ep.money
scoreboard players operation #ep.drop ep.variable *= #ep.dead.drop ep.variable
scoreboard players operation #ep.drop ep.variable /= 100 ep.variable

#scoreboard players operation #ep.target_uid ep.session = @a[tag=ep.caster] ep.session
execute as @a[tag=ep.caster] run function directory:uid/get

execute if score #ep.bounty.enabled ep.variable matches 1 unless entity @a[tag=ep.caster,scores={ep.bounty=1..}] as @a[scores={ep.player_kill=1..}] run function bounty:player/event/bounty/gain
execute if score #ep.bounty.enabled ep.variable matches 1 if entity @a[tag=ep.caster,scores={ep.bounty=1..}] as @a[scores={ep.player_kill=1..}] run function bounty:player/event/bounty/reward
execute if score #ep.bounty.enabled ep.variable matches 1 as @a[tag=ep.caster,scores={ep.bounty=1..}] if score @s ep.money < @s ep.bounty run scoreboard players operation @s ep.debt -= @s ep.bounty
execute if score #ep.bounty.enabled ep.variable matches 1 as @a[tag=ep.caster,scores={ep.bounty=1..}] if score @s ep.money >= @s ep.bounty run scoreboard players operation @s ep.money -= @s ep.bounty
execute if score #ep.bounty.enabled ep.variable matches 1 as @a[tag=ep.caster,scores={ep.bounty=1..}] run scoreboard players reset @s ep.bounty



scoreboard players operation #ep.lose ep.variable = #ep.drop ep.variable


scoreboard players operation #ep.sender ep.money = @a[tag=ep.caster] ep.money
scoreboard players operation #ep.receiver ep.money = ZERO ep.variable
scoreboard players operation #ep.transaction ep.money = #ep.lose ep.variable
function directory:transaction/transfer
scoreboard players operation @a[tag=ep.caster] ep.money = #ep.sender ep.money


function bounty:currency_drop/constructor/new
execute as @e[tag=ep.spawning,tag=ep.trait.currency_drop] run scoreboard players operation @s ep.money = #ep.drop ep.variable
execute as @e[tag=ep.spawning,tag=ep.trait.currency_drop] run function bounty:currency_drop/constructor/finalize

tag @a[tag=ep.caster] remove ep.caster

kill @s

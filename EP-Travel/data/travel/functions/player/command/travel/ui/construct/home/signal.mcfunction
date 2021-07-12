## Singal for teleport
execute as @a[tag=ep.caster] at @s if score @s ep.tp_cooldown2 matches ..0 if score @s ep.money >= #ep.terminal.teleport_cost2 ep.variable if data entity @s SpawnX run function travel:player/command/travel/ui/construct/home/command
execute as @a[tag=ep.caster] at @s if score @s ep.tp_cooldown2 matches ..0 if score @s ep.money >= #ep.terminal.teleport_cost2 ep.variable unless data entity @s SpawnX run tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"},{"text":" No home point set.","color":"red"}]
execute as @a[tag=ep.caster] at @s if score @s ep.tp_cooldown2 matches ..0 unless score @s ep.money >= #ep.terminal.teleport_cost2 ep.variable run tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"},{"text":" Insufficient funds to teleport.","color":"red"}]

## Acts as a click, basically max to none during a tick
scoreboard players set #ep.redstone_level ep.variable 8
# I just used the ep.player_kill objective since I didn't want to create a new objective
scoreboard players add @s ep.player_kill 1
execute if entity @s[tag=ep.click,scores={ep.player_kill=5..}] run scoreboard players set #ep.redstone_level ep.variable 0
tag @s[tag=ep.click,scores={ep.player_kill=5..}] remove ep.click
execute if entity @s[scores={ep.player_kill=5..}] run scoreboard players reset @s ep.player_kill

## Runs when a player triggers travel
scoreboard players set #ep.state ep.state 0

execute unless score #ep.terminal.teleport_cooldown ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute unless score #ep.terminal.teleport_cooldown1 ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute unless score #ep.terminal.teleport_cooldown2 ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute unless score #ep.terminal.teleport_cooldown3 ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute unless score #ep.terminal.teleport_cooldown4 ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute unless score #ep.terminal.teleport_cooldown5 ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
# Plugs into the bounty system to make sure player doesn't have bounty when travelling
execute if score #ep.bounty.travel ep.variable matches 0 if score @s ep.bounty matches 1.. run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state matches 0 run function travel:player/command/travel/message/disabled
execute if score #ep.state ep.state matches 1 run function travel:player/command/travel/success
execute if score #ep.state ep.state matches 2 run function travel:player/command/travel/message/bounty

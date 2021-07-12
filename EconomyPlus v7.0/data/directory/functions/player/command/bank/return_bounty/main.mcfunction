## Returns the bounty if the player has it
scoreboard players set #ep.state ep.state 0
execute if score #ep.state ep.state matches 0 unless score @s ep.bounty matches 1.. run scoreboard players set #ep.state ep.state 1
#execute if score #ep.state ep.state matches 0 unless entity @s[tag=ep.player.inside_floater.bank] unless score #ep.is_near_bed ep.variable = #ep.enum.bool.true ep.state run scoreboard players set #ep.state ep.state 1
#execute if score #ep.state ep.state matches 0 unless score @s ep.debt matches 0 run scoreboard players set #ep.state ep.state 2

execute if score #ep.state ep.state matches 0 run function directory:player/command/bank/return_bounty/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/bank/return_bounty/no_bounty

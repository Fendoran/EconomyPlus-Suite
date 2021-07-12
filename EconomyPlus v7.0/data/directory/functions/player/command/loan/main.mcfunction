## Activates when player wants to take a loan
function directory:player/method/is_near_bed
scoreboard players operation #ep.state ep.state = #ep.enum.loan.idle ep.state
execute if score #ep.state ep.state matches 0 if score #ep.loan.enabled ep.config matches 0 run scoreboard players set #ep.state ep.state 5
#execute if score #ep.state ep.state matches 0 unless entity @s[tag=ep.player.inside_floater.bank] unless score #ep.is_near_bed ep.variable = #ep.enum.bool.true ep.state run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 unless score @s ep.debt matches 0 run scoreboard players set #ep.state ep.state 2

execute if score #ep.state ep.state matches 0 run function directory:player/command/loan/success
#execute if score #ep.state ep.state matches 1 run function directory:player/command/loan/message/invalid_location
execute if score #ep.state ep.state matches 2 run function directory:player/command/loan/message/in_debt
execute if score #ep.state ep.state matches 5 run function directory:player/command/loan/message/disabled

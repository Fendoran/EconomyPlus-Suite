## /trigger withdraw
function directory:player/method/is_near_bed
scoreboard players set #ep.state ep.state 0

#execute if score #ep.state ep.state matches 0 unless entity @s[tag=ep.player.inside_floater.bank] unless score #ep.is_near_bed ep.variable = #ep.enum.bool.true ep.state run scoreboard players set #ep.state ep.state 1

execute if score #ep.state ep.state matches 0 run function directory:player/command/withdraw/success
#execute if score #ep.state ep.state matches 1 run function directory:player/command/withdraw/message/invalid_location

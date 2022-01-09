## Determines which action to take for /trigger auction
scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 unless score #ep.auction.state ep.state = #ep.enum.auction.idle ep.state run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 unless entity @s[tag=ep.player.inside_floater.auction] run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state matches 0 if score #ep.auction.enabled ep.variable matches 0 run scoreboard players set #ep.state ep.state 3

execute if score #ep.state ep.state matches 0 run function directory:player/command/auction/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/auction/message/already_started
execute if score #ep.state ep.state matches 2 run function directory:player/command/auction/message/invalid_location
execute if score #ep.state ep.state matches 3 run function directory:player/command/auction/message/disabled

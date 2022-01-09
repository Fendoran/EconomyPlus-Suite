## Commands ran when /trigger market is typed
# Sets Player shop cost to 0 if simple mode is enabled
execute unless score #ep.realistic_enabled ep.config matches 1 run scoreboard players set #ep.market.sign_cost ep.variable 0

# Sets default state
scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if score @s ep.money < #ep.market.sign_cost ep.variable run scoreboard players set #ep.state ep.state 2

scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.false ep.state
execute if score #ep.state ep.state matches 0 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function directory:player/command/market/raycast

execute if score #ep.state ep.state matches 0 run function directory:player/command/market/message/invalid_location
# NOTE, in this case 1 is a successful finding
execute if score #ep.state ep.state matches 2 run function directory:player/command/market/message/not_enough_money

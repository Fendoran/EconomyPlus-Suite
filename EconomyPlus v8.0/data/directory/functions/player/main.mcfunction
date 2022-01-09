## Executes as every player with the ep.player.init tag

# If a player is in debt, run this command to work on it
execute if score @s ep.login matches 1.. run function directory:player/login
execute if score #ep.loan.enabled ep.config matches 1 if score @s ep.debt_time >= #ep.debt.interval ep.variable run function directory:player/event/debt/main
execute if score @s ep.interest_time >= #ep.bank.interest.interval ep.variable run function directory:player/event/bank/interest/main
execute if score @s ep.tax_time >= #ep.tax.interval ep.variable run function directory:player/event/tax/main
execute if score @s ep.debt matches 0.. unless score @s ep.bounty matches 0.. run scoreboard players reset @s ep.debt_state
execute if score @s ep.debt matches ..-1 unless score @s ep.debt_state matches 1.. run scoreboard players set @s ep.debt_state 1
execute if score @s ep.debt matches 1.. run scoreboard players set @s ep.debt 0
execute if score @s ep.debt matches 1.. run scoreboard players set @s ep.debt 0

# Daily reward
execute if score #ep.reward.enabled ep.config matches 1 if score #ep.reward_value ep.variable matches 1.. if score @s ep.reward_time >= #ep.reward.interval ep.variable run function directory:player/event/reward/give

# If a player is near a shop, the player runs this command

execute if entity @e[tag=ep.trait.shop, distance=..7] run function directory:player/tooltip/main


## Detects when a player is near an area
# Gets player xyz and stores in #ep.temp
execute as @s store result score #ep.temp ep.position.x run data get entity @s Pos[0]
execute as @s store result score #ep.temp ep.position.y run data get entity @s Pos[1]
execute as @s store result score #ep.temp ep.position.z run data get entity @s Pos[2]
execute if entity @s[tag=ep.player.inside_floater.shop] unless entity @e[tag=ep.trait.floater, tag=ep.floater.shop, distance=..25] run function directory:tracker/area/event/exit_floater/shop
execute if entity @s[tag=ep.player.inside_floater.auction] unless entity @e[tag=ep.trait.floater, tag=ep.floater.auction, distance=..10] run function directory:tracker/area/event/exit_floater/auction
execute if entity @s[tag=ep.player.inside_floater.bank] unless entity @e[tag=ep.trait.floater, tag=ep.floater.bank, distance=..5] run function directory:tracker/area/event/exit_floater/bank
#execute if entity @s[tag=!ep.player.inside_box.spawn] if score @s ep.position.x >= #ep.spawn.x.min ep.variable if score @s ep.position.x <= #ep.spawn.x.max ep.variable if score @s ep.position.y >= #ep.spawn.y.min ep.variable if score @s ep.position.y <= #ep.spawn.y.max ep.variable if score @s ep.position.z >= #ep.spawn.z.min ep.variable if score @s ep.position.z <= #ep.spawn.z.max ep.variable run

## Runs for player's entering trigger commands
# Maps triggers to functions, then resets them, as well as re-enable them

# Auction
execute unless score @s auction = #ep.enum.command.idle ep.state run function directory:player/command/auction/main
scoreboard players operation @s auction = #ep.enum.command.idle ep.state
scoreboard players enable @s auction


# Bid
execute unless score @s bid = #ep.enum.command.idle ep.state run function directory:player/command/bid/main
scoreboard players operation @s bid = #ep.enum.command.idle ep.state
scoreboard players enable @s bid

# Debt
execute unless score @s debt = #ep.enum.command.idle ep.state run function directory:player/command/debt/main
scoreboard players operation @s debt = #ep.enum.command.idle ep.state
scoreboard players enable @s debt


# Pay
execute unless score @s pay = #ep.enum.command.idle ep.state run function directory:player/command/pay/main
scoreboard players operation @s pay = #ep.enum.command.idle ep.state
scoreboard players enable @s pay

# Balance
execute unless score @s balance = #ep.enum.command.idle ep.state run function directory:player/command/balance/main
scoreboard players operation @s balance = #ep.enum.command.idle ep.state
scoreboard players enable @s balance

# Status
execute unless score @s status = #ep.enum.command.idle ep.state run function directory:player/command/status/main
scoreboard players operation @s status = #ep.enum.command.idle ep.state
scoreboard players enable @s status


# Bank
execute unless score @s bank = #ep.enum.command.idle ep.state run function directory:player/command/bank/main
scoreboard players operation @s bank = #ep.enum.command.idle ep.state
scoreboard players enable @s bank

# Commands
execute unless score @s commands = #ep.enum.command.idle ep.state run function directory:player/command/commands/main
scoreboard players operation @s commands = #ep.enum.command.idle ep.state
scoreboard players enable @s commands

# Sell
execute unless score @s sell = #ep.enum.command.idle ep.state run function directory:player/command/sell/main
scoreboard players operation @s sell = #ep.enum.command.idle ep.state
scoreboard players enable @s sell

# buy
execute unless score @s buy = #ep.enum.command.idle ep.state run function directory:player/command/buy/main
scoreboard players operation @s buy = #ep.enum.command.idle ep.state
scoreboard players enable @s buy

# Settings
execute unless score @s settings = #ep.enum.command.idle ep.state run function directory:player/command/settings/main
scoreboard players operation @s settings = #ep.enum.command.idle ep.state
scoreboard players enable @s settings

# Market
execute unless score @s market = #ep.enum.command.idle ep.state run function directory:player/command/market/main
scoreboard players operation @s market = #ep.enum.command.idle ep.state
scoreboard players enable @s market

# Currency display
execute if score @s ep.actionbar = #ep.enum.bool.true ep.state run function directory:tracker/currency/display/actionbar

## Detects if a player has interected with a villager
execute if score @s ep.interact matches 1.. run function directory:player/interact/main


# Sets players money values up
scoreboard players operation @s ep.display_money = @s ep.money
scoreboard players operation @s ep.highest_money > @s ep.money



# Advancements for players
execute if score @s[advancements={economy_plus:earn_any=false}] ep.money matches 1.. run advancement grant @s only economy_plus:earn_any
execute if score @s[advancements={economy_plus:earn_100=false}] ep.money matches 100.. run advancement grant @s only economy_plus:earn_100
execute if score @s[advancements={economy_plus:earn_1000=false}] ep.money matches 1000.. run advancement grant @s only economy_plus:earn_1000
execute if score @s[advancements={economy_plus:earn_10000=false}] ep.money matches 10000.. run advancement grant @s only economy_plus:earn_10000
execute if score @s[advancements={economy_plus:earn_25000=false}] ep.money matches 25000.. run advancement grant @s only economy_plus:earn_25000
execute if score @s[advancements={economy_plus:earn_50000=false}] ep.money matches 50000.. run advancement grant @s only economy_plus:earn_50000
execute if score @s[advancements={economy_plus:earn_100000=false}] ep.money matches 100000.. run advancement grant @s only economy_plus:earn_100000
execute if score @s[advancements={economy_plus:earn_1000000=false}] ep.money matches 1000000.. run advancement grant @s only economy_plus:earn_1000000

execute if score @s ep.death matches 1.. run function directory:player/death

# Runs functions for EP plugins
function #economy_plus:player_tick

## Detects if player is eligible for loan
## Ran as the player

# #ep.loan ep.variable gets set to the value of the loan the player took
scoreboard players operation #ep.loan ep.variable = #ep.ui.value ep.variable


scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if score #ep.loan ep.variable matches ..0 run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 if score #ep.loan ep.variable > #ep.loan.current_max_loan ep.variable run scoreboard players set #ep.state ep.state 2

# Get player and loan equity amounts
scoreboard players operation #ep.loan.equity ep.variable = #ep.loan ep.variable
scoreboard players operation #ep.loan.equity ep.variable *= #ep.loan.equity ep.config
scoreboard players operation #ep.loan.equity ep.variable /= 100 ep.variable

scoreboard players operation #ep.player.equity ep.variable = @s ep.money
scoreboard players operation #ep.player.equity ep.variable += @s ep.bank

execute if score #ep.state ep.state matches 0 if score #ep.player.equity ep.variable < #ep.loan.equity ep.variable run scoreboard players set #ep.state ep.state 3
execute if score #ep.state ep.state matches 0 if score @s ep.debt_state > #ep.enum.loan.idle ep.state run scoreboard players set #ep.state ep.state 4

execute if score #ep.state ep.state matches 0 run function directory:player/command/loan/ui/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/loan/message/negative
execute if score #ep.state ep.state matches 2 run function directory:player/command/loan/message/over_max_loan
execute if score #ep.state ep.state matches 3 run function directory:player/command/loan/message/bad_equity
execute if score #ep.state ep.state matches 4 run function directory:player/command/loan/message/in_debt

## Runs when submit button is pressed
scoreboard players operation #ep.credit ep.variable = #ep.ui.value ep.variable
scoreboard players operation #ep.debt ep.variable = @s ep.debt
scoreboard players operation #ep.debt ep.variable *= -1 ep.variable

scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if score #ep.credit ep.variable matches ..-1 run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 if score #ep.credit ep.variable > @s ep.money run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state matches 0 if score #ep.credit ep.variable > #ep.debt ep.variable run scoreboard players set #ep.state ep.state 3

execute if score #ep.state ep.state matches 0 run function directory:player/command/credit/ui/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/credit/message/negative
execute if score #ep.state ep.state matches 2 run function directory:player/command/credit/message/over_debt
execute if score #ep.state ep.state matches 3 run function directory:player/command/credit/message/over_balance

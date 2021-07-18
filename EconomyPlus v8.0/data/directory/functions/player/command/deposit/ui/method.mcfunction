## Deposit methodology
scoreboard players operation #ep.deposit ep.variable = #ep.ui.value ep.variable

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = @s ep.bank
scoreboard players operation #ep.transaction ep.money = #ep.deposit ep.variable
function directory:transaction/transfer

scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if score #ep.deposit ep.variable matches ..0 run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 if score @s ep.money < #ep.deposit ep.variable run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state matches 0 if score #ep.transaction ep.money < #ep.deposit ep.variable run scoreboard players set #ep.state ep.state 3

execute if score #ep.state ep.state matches 0 run function directory:player/command/deposit/ui/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/deposit/message/negative
execute if score #ep.state ep.state matches 2 run function directory:player/command/deposit/message/not_enough
execute if score #ep.state ep.state matches 3 run function directory:player/command/deposit/message/too_big

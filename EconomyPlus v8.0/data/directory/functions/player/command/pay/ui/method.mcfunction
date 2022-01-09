## Terminal method
tag @s add ep.sender
tag @p[tag=!ep.sender, distance=0.1..10] add ep.receiver

scoreboard players operation #ep.pay ep.variable = #ep.ui.value ep.variable
scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = @a[tag=ep.receiver] ep.money
scoreboard players operation #ep.transaction ep.money = #ep.pay ep.variable
function directory:transaction/transfer

scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 if score @s pay matches ..-1 run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 unless entity @a[tag=ep.receiver] run scoreboard players set #ep.state ep.state 2
execute if score #ep.state ep.state matches 0 if score @s ep.money < #ep.pay ep.variable run scoreboard players set #ep.state ep.state 3
execute if score #ep.state ep.state matches 0 if score #ep.transaction ep.money < #ep.pay ep.variable run scoreboard players set #ep.state ep.state 4

execute if score #ep.state ep.state matches 0 run function directory:player/command/pay/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/pay/message/negative
execute if score #ep.state ep.state matches 2 run function directory:player/command/pay/message/no_player
execute if score #ep.state ep.state matches 3 run function directory:player/command/pay/message/not_enough_money
execute if score #ep.state ep.state matches 4 run function directory:player/command/pay/message/too_big

tag @s remove ep.sender
tag @a[tag=ep.receiver] remove ep.receiver

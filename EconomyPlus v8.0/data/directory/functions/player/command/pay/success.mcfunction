## Pay is successful
function directory:terminal/event/close_terminal

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = @a[tag=ep.receiver] ep.money
scoreboard players operation #ep.transaction ep.money = #ep.ui.value ep.variable
function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.sender ep.money
scoreboard players operation @a[tag=ep.receiver] ep.money = #ep.receiver ep.money

execute as @s run function directory:player/command/pay/message/sender
execute as @a[tag=ep.receiver] run function directory:player/command/pay/message/receiver

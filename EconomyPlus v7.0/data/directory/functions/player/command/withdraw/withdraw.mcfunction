## Final withdraw w/ message
scoreboard players operation #ep.sender ep.money = @s ep.bank
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.ui.value ep.variable
function directory:transaction/transfer

scoreboard players operation @s ep.bank = #ep.sender ep.money
scoreboard players operation @s ep.money = #ep.receiver ep.money

function directory:player/command/withdraw/message/success

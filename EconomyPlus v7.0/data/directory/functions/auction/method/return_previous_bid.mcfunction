scoreboard players operation #ep.sender ep.money = #ep.previous_bid ep.variable
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.previous_bid ep.variable
function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.receiver ep.money

function directory:auction/message/out_bidded

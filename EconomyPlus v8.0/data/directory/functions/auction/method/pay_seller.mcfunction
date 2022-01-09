## Pay the seller what he is due from the auction
# executor = auction seller after successful auction
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.sender ep.money = #ep.bid ep.variable
scoreboard players operation #ep.transaction ep.money = #ep.bid ep.variable
function directory:transaction/transfer
scoreboard players operation #ep.variable ep.variable = #ep.bid ep.variable
scoreboard players operation #ep.variable ep.variable *= #ep.auction.fee ep.variable
scoreboard players operation #ep.variable ep.variable /= 100 ep.variable
scoreboard players operation @s ep.money = #ep.receiver ep.money

function directory:auction/message/auction_end

scoreboard players operation @s ep.money -= #ep.variable ep.variable
scoreboard players operation #ep.vault ep.variable += #ep.variable ep.variable
function directory:auction/message/seller_fee

## Does the "stocking" of money

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.sender ep.money
# adds to the shops money storage
execute as @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] run scoreboard players operation @s ep.stored_money += @s ep.money

function directory:market/message/owner/success_add_money
execute rotated as @s run function directory:market/use_sell/float_tooltip/stock

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] run function directory:shop/draw/current_use

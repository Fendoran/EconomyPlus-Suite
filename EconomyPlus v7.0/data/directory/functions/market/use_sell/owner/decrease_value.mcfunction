## Does the "stocking" of money
#ep.price ep.variable
#scoreboard players operation #ep.sender ep.money = #ep.price ep.variable
#scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

#function directory:transaction/transfer

scoreboard players operation @s ep.money += #ep.price ep.variable
# adds to the shops money storage
execute as @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] run scoreboard players operation @s ep.stored_money -= @s ep.money

function directory:market/message/owner/success_remove_money
execute rotated as @s run function directory:market/use_sell/float_tooltip/unstock

execute as @e[type=marker,tag=ep.trait.market,tag=ep.trait.market.target,limit=1] run function directory:shop/draw/current_use

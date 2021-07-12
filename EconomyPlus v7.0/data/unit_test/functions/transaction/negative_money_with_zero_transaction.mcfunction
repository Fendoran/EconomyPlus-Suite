## Negative Money, with zero transaction
#d February 3rd, 2020
scoreboard players set #ep.sender ep.money -1000
scoreboard players set #ep.receiver ep.money -2000
scoreboard players set #ep.transaction ep.money 0
function directory:transaction/transfer

execute unless score #ep.sender ep.money matches -1000 unless score #ep.receiver ep.money matches -2000 unless score #ep.transaction ep.money matches 0 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "transaction->negative_money_with_zero_transaction", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

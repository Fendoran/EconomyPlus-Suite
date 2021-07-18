scoreboard players set #ep.sender ep.money 0
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = MAX_INT ep.variable
function directory:transaction/transfer

execute unless score #ep.sender ep.money matches 0 unless score #ep.receiver ep.money matches 0 unless score #ep.transaction ep.money matches 0 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "transaction->all_zero_with_extreme_transaction", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

scoreboard players set #ep.sender ep.money 1000
scoreboard players set #ep.receiver ep.money 3000
scoreboard players operation #ep.transaction ep.money = MAX_INT ep.variable
function directory:transaction/transfer

execute unless score #ep.sender ep.money matches 0 unless score #ep.receiver ep.money matches 4000 unless score #ep.transaction ep.money matches 1000 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "transaction->arbitrary_sender_with_extreme_transaction", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

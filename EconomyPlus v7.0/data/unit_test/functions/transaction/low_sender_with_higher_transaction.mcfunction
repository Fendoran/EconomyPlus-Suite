scoreboard players set #ep.sender ep.money 100
scoreboard players set #ep.receiver ep.money 0
scoreboard players set #ep.transaction ep.money 1000
function directory:transaction/transfer

execute unless score #ep.sender ep.money matches 0 unless score #ep.receiver ep.money matches 100 unless score #ep.transaction ep.money matches 100 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "transaction->low_sender_with_higher_transaction", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

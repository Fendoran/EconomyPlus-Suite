scoreboard players set #ep.sender ep.money 1000
scoreboard players operation #ep.receiver ep.money = MAX_INT ep.variable
scoreboard players set #ep.transaction ep.money 1000
function directory:transaction/transfer

execute unless score #ep.sender ep.money matches 1000 unless score #ep.receiver ep.money = MAX_INT ep.variable unless score #ep.transaction ep.money matches 0 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "transaction->full_receiver_with_arbitary_transaction", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

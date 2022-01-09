scoreboard players operation #ep.sender ep.money = @a[tag=ep.caster] ep.bank
scoreboard players operation #ep.receiver ep.money = @a[tag=ep.caster] ep.money
scoreboard players operation #ep.transaction ep.money = MAX_INT ep.variable
function directory:transaction/transfer

scoreboard players operation #ep.ui.value ep.variable = #ep.transaction ep.money
function directory:terminal/method/draw_money

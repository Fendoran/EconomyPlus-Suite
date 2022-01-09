scoreboard players operation #ep.debt ep.variable = @a[tag=ep.caster] ep.debt
scoreboard players operation #ep.debt ep.variable *= -1 ep.variable

scoreboard players operation #ep.sender ep.money = @a[tag=ep.caster] ep.money
scoreboard players operation #ep.receiver ep.money = ZERO ep.variable
scoreboard players operation #ep.transaction ep.money = #ep.debt ep.variable
function directory:transaction/transfer

scoreboard players operation #ep.ui.value ep.variable = #ep.transaction ep.money
function directory:terminal/method/draw

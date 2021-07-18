## Creates actionbar button
tag @s add ep.terminal.button
tag @s add ep.dir.bank
tag @s add ep.terminal.bank.deposit
tag @s add ep.terminal.bank.draw
data modify entity @s CustomName set value '{"text": "Deposit","color":"#ffffff"}'
function directory:terminal/constructor/finalize

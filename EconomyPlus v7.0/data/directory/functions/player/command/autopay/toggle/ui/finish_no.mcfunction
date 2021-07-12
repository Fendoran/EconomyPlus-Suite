# define tag ep.terminal.submit
tag @s add ep.terminal.submit
tag @s add ep.terminal.autopay.toggle
tag @s add ep.terminal.autopay.toggle.no
tag @s add ep.terminal.bank.type
data modify entity @s CustomName set value '{"text": "No", "color": "red"}'
function directory:terminal/constructor/finalize

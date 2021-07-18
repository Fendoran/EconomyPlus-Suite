# define tag ep.terminal.submit
tag @s add ep.terminal.submit
tag @s add ep.terminal.autopay.toggle
tag @s add ep.terminal.autopay.toggle.yes
tag @s add ep.terminal.bank.type
data modify entity @s CustomName set value '{"text": "Yes", "color": "#32CD32"}'
function directory:terminal/constructor/finalize

## Ticker for the bank anchor
tag @s add ep.bank.anchor.current
execute unless block ~ ~ ~ #minecraft:signs run kill @s
scoreboard players operation #ep.session ep.session = @s ep.session
execute as @e[tag=ep.terminal.bank.type,distance=..15] if score @s ep.session = #ep.session ep.session run data merge entity @e[type=area_effect_cloud,tag=ep.bank.anchor.current,limit=1] {Age:0}
execute if entity @s[nbt={Age:19}] run function directory:player/command/bank/close_terminal
tag @s remove ep.bank.anchor.current

execute if score #ep.ui.value ep.variable < #ep.ui.default ep.variable run scoreboard players operation #ep.ui.value ep.variable = #ep.ui.default ep.variable
execute if entity @s[tag=ep.terminal.loan] as @a[tag=ep.caster] run function directory:terminal/method/number/loan


function directory:terminal/method/draw

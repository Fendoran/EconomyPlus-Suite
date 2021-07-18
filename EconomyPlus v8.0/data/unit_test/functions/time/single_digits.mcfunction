scoreboard players set #ep.input.time ep.variable 1300
function directory:formatter/time/mm-ss

execute unless score #ep.minutes ep.variable matches 1 unless score #ep.seconds ep.variable matches 5 run tellraw @a [{"text": "ASSERT_ERROR!: ", "color": "red"}, {"text": "time->single_digits", "color": "#32CD32"}, {"text": " (Please report this @Fendoran)", "color": "#C0C0C0"}]

function directory:formatter/clear

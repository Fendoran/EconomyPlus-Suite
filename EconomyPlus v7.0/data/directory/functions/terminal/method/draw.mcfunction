# names entity based on value in scoreboard
execute if entity @s[tag=ep.terminal.submit.number_formatted] in overworld run function directory:terminal/method/draw
execute if entity @s[tag=ep.terminal.submit.time_formatted] in overworld run function directory:terminal/method/draw_formatted_time
execute if entity @s[tag=ep.terminal.submit.percent_formatted] in overworld run function directory:terminal/method/draw_percent
execute if entity @s[tag=ep.terminal.submit.money_formatted] in overworld run function directory:terminal/method/draw_money

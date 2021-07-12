# names entity based on value in scoreboard
execute if entity @s[tag=ep.trait.number_formatted] run function directory:ui/method/draw_number
execute if entity @s[tag=ep.trait.time_formatted] run function directory:ui/method/draw_reset_time
execute if entity @s[tag=ep.trait.long_time_formatted] run function directory:ui/method/draw_long_reset_time
execute if entity @s[tag=ep.trait.money_formatted] run function directory:ui/method/draw_money
execute if entity @s[tag=ep.trait.percent_formatted] run function directory:ui/method/draw_percent
execute if entity @s[tag=ep.trait.market_formatted] run function directory:ui/method/draw_market
execute if entity @s[tag=ep.trait.shop_formatted] run function directory:ui/method/draw_shop

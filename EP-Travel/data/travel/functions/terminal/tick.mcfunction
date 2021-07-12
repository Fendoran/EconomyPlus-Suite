## Ticks the terminals so that they can update the display time
execute if entity @s[tag=ep.terminal.timer] run function travel:player/command/travel/ui/construct/shop/node
execute if entity @s[tag=ep.terminal.timer1] run function travel:player/command/travel/ui/construct/spawn/node
execute if entity @s[tag=ep.terminal.timer2] run function travel:player/command/travel/ui/construct/home/node
execute if entity @s[tag=ep.terminal.timer3] run function travel:player/command/travel/ui/construct/auction/node
execute if entity @s[tag=ep.terminal.timer4] run function travel:player/command/travel/ui/construct/bank/node

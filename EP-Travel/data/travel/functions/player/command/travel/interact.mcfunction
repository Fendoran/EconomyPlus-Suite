## Maps Button to Specific button press
execute if entity @s[tag=ep.terminal.shop] run function travel:player/command/travel/ui/construct/shop/signal
execute if entity @s[tag=ep.terminal.home] run function travel:player/command/travel/ui/construct/home/signal
execute if entity @s[tag=ep.terminal.spawn] run function travel:player/command/travel/ui/construct/spawn/signal
execute if entity @s[tag=ep.terminal.auction] run function travel:player/command/travel/ui/construct/auction/signal
execute if entity @s[tag=ep.terminal.bank] run function travel:player/command/travel/ui/construct/bank/signal
execute if entity @s[tag=ep.terminal.market] run function travel:player/command/travel/ui/construct/market/signal

execute if entity @s[tag=ep.terminal.arrow] run function travel:player/command/travel/ui/construct/arrow/signal

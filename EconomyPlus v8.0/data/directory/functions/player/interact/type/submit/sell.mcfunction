## Determins which sell button was pressed
execute if entity @s[tag=ep.terminal.sell.item] run function directory:player/command/sell/item/ui/signal
execute if entity @s[tag=ep.terminal.sell.price] run function directory:player/command/sell/price/ui/signal

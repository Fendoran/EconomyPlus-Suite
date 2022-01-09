## Maps Button to Specific button press
scoreboard players operation #ep.shop_uid ep.session = @s ep.owner
execute if entity @s[tag=ep.terminal.market.buy.stock] run function directory:market/use_buy/owner/ui/stock/signal
execute if entity @s[tag=ep.terminal.market.buy.unstock] run function directory:market/use_buy/owner/ui/unstock/signal
execute if entity @s[tag=ep.terminal.market.buy.collect] run function directory:market/use_buy/owner/ui/collect/signal
execute if entity @s[tag=ep.terminal.market.buy.reset] run function directory:market/use_buy/owner/ui/reset/signal

execute if entity @s[tag=ep.terminal.market.sell.stock] run function directory:market/use_sell/owner/ui/stock/signal
execute if entity @s[tag=ep.terminal.market.sell.unstock] run function directory:market/use_sell/owner/ui/unstock/signal
execute if entity @s[tag=ep.terminal.market.sell.collect] run function directory:market/use_sell/owner/ui/collect/signal
execute if entity @s[tag=ep.terminal.market.sell.reset] run function directory:market/use_sell/owner/ui/reset/signal

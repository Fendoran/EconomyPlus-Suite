#c maximum number of stored item sets
scoreboard players set #ep.market.max_inventory ep.variable 27
# define entity #ep.enum.market.idle
scoreboard players set #ep.enum.market.idle ep.state 0
# define entity #ep.enum.market.successful
scoreboard players set #ep.enum.market.success ep.state 1
# define entity #ep.enum.market.not_enough_money
scoreboard players set #ep.enum.market.not_enough_money ep.state 2

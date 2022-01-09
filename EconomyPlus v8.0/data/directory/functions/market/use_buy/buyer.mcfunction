## Runs if player is buying from a player owned market shop
# Check for full inventory
function directory:market/check_full

scoreboard players operation #ep.success ep.variable = #ep.enum.bool.false ep.state
scoreboard players operation #ep.user_balance ep.variable = @s ep.money

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.market, distance=..0.3] at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:market/use_buy/buyer/main

scoreboard players operation #ep.state ep.state = #ep.enum.buyer.idle ep.state
execute if score #ep.state ep.state = #ep.enum.buyer.idle ep.state if score #ep.user_balance ep.variable < #ep.price ep.variable run scoreboard players operation #ep.state ep.state = #ep.enum.buyer.not_enough_balance ep.state
execute if score #ep.state ep.state = #ep.enum.buyer.idle ep.state unless score #ep.use ep.variable matches 1.. run scoreboard players operation #ep.state ep.state = #ep.enum.buyer.in_cooldown ep.state

# Statuses
execute unless score #ep.check_full ep.variable matches 36.. if score #ep.state ep.state = #ep.enum.buyer.idle ep.state run function directory:market/use_buy/buyer/success
execute unless score #ep.check_full ep.variable matches 36.. if score #ep.state ep.state = #ep.enum.buyer.not_enough_balance ep.state run function directory:market/message/not_enough_balance
execute unless score #ep.check_full ep.variable matches 36.. if score #ep.state ep.state = #ep.enum.buyer.in_cooldown ep.state run function directory:market/message/buyer/out_of_stock
execute if score #ep.check_full ep.variable matches 36.. run function directory:market/message/buyer/inv_full

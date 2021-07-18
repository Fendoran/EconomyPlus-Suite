## Player has a bounty, and tries to pay it off
scoreboard players operation #ep.variable ep.variable = @s ep.bounty
scoreboard players operation #ep.variable ep.variable *= #ep.bounty.return.percent ep.variable
scoreboard players operation #ep.variable ep.variable /= 100 ep.variable
scoreboard players operation #ep.variable ep.variable += @s ep.bounty
execute if score @s ep.money >= #ep.variable ep.variable run function directory:player/command/bank/return_bounty/pay
execute unless score @s ep.money >= #ep.variable ep.variable run function directory:player/command/bank/return_bounty/poor

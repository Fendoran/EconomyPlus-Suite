# define entity #ep.sender Transaction sender
# define entity #ep.receiver Transaction receiver
# define entity #ep.transaction Transaction amount
# define entity #ep.overflow_checker Handling overflow
# define entity #ep.underflow_checker Handling underflow

scoreboard players operation #ep.sender ep.variable = #ep.sender ep.money
scoreboard players operation #ep.receiver ep.variable = #ep.receiver ep.money
scoreboard players operation #ep.transaction ep.variable = #ep.transaction ep.money

scoreboard players operation #ep.overflow_checker ep.variable = MAX_INT ep.variable
scoreboard players operation #ep.overflow_checker ep.variable -= #ep.receiver ep.variable

scoreboard players operation #ep.underflow_checker ep.variable = #ep.sender ep.variable

scoreboard players operation #ep.transaction ep.variable < #ep.overflow_checker ep.variable
scoreboard players operation #ep.transaction ep.variable < #ep.underflow_checker ep.variable
scoreboard players operation #ep.transaction ep.variable > ZERO ep.variable

scoreboard players operation #ep.receiver ep.variable += #ep.transaction ep.variable
scoreboard players operation #ep.sender ep.variable -= #ep.transaction ep.variable

scoreboard players operation #ep.receiver ep.money = #ep.receiver ep.variable
scoreboard players operation #ep.sender ep.money = #ep.sender ep.variable
scoreboard players operation #ep.transaction ep.money = #ep.transaction ep.variable

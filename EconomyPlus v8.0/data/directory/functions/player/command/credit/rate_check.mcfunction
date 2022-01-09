
scoreboard players operation #ep.credit_check ep.variable = #ep.credit ep.variable
scoreboard players operation #ep.credit_check ep.variable *= 100 ep.variable
scoreboard players operation #ep.credit_check ep.variable /= #ep.config.CreditMinPercentPay ep.config
execute if score #ep.credit_check ep.variable >= @s ep.debt run function directory:player/event/debt/increase_cs


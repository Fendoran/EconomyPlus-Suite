## handles autopaying the debt that a player has gained
# Creates a scoreboard for the min_pay that is positive, because it's sort of annoying
scoreboard players operation #ep.debt.min_pay ep.variable = @s ep.debt.min_pay
scoreboard players operation #ep.debt.min_pay ep.variable *= -1 ep.variable

# See if there is even enough money in bank and pay it if so, otherwise, display a warning
execute if score @s ep.bank < #ep.debt.min_pay ep.variable run function directory:player/event/debt/message/fail_autopay
execute if score @s ep.bank >= #ep.debt.min_pay ep.variable run function directory:player/event/debt/success_min_autopay

scoreboard players set @s ep.debt_state 3
execute if score @s ep.bounty_time >= #ep.bounty.interval ep.variable run function bounty:player/event/bounty/reduce

## The main player ticking function; everything ticks from here
# executor = all players
execute if score @s ep.bounty matches 1.. run function bounty:player/event/bounty/main

#scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
#scoreboard players operation #ep.receiver ep.money = @s ep.money
#scoreboard players operation #ep.transaction ep.money = #ep.mob.drop ep.variable
#function directory:transaction/transfer

#scoreboard players operation @s ep.money = #ep.receiver ep.money

#function directory:player/message/kill_mob

advancement revoke @s only directory:event/kill_mob

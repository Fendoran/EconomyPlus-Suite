# define entity #ep.auction.time
scoreboard players remove #ep.auction.time ep.time 1

execute positioned 29999999 0 29999999 run function directory:auction/method/bossbar

execute if score #ep.auction.time ep.time matches 0 run function directory:auction/method/end

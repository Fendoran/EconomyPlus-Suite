## trigger auction was successful
tag @s add ep.auction.seller

execute positioned 29999999 0 29999999 run function directory:player/command/auction/init

tag @a remove ep.auction.seller

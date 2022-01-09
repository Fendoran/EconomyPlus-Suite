execute if entity @s[tag=ep.floater.spawning] run function directory:floater/type/auction/spawned

execute if score #ep.auction.state ep.state = #ep.enum.auction.init ep.state run scoreboard players enable @a[distance=..5] auction
execute if score #ep.auction.state ep.state = #ep.enum.auction.broadcast ep.state run scoreboard players enable @a[distance=..5] bid

execute as @a[tag=!ep.player.inside_floater.auction, tag=!global.ignore, distance=..10] at @s run function directory:tracker/area/event/enter_floater/auction

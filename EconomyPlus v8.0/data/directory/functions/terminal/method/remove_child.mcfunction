# Kills child
execute if entity @s[tag=ep.trait.auction_item.display] run scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state
data merge entity @s {Health: 0.0f, DeathTime: 19s}
tp @s ~ ~-1000 ~

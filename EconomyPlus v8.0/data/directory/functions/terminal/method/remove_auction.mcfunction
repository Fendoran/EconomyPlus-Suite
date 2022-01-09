## Occurs when player gets too far away from the item
scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state
summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['ep.auction.reward']}
execute as @a at @s if score @s ep.session = #ep.target_uid ep.session run tp @e[tag=ep.auction.reward] @s
execute as @e[tag=ep.auction.reward] run data modify entity @s Item set from storage ep:auction item
tag @e[tag=ep.auction.reward] remove ep.auction.reward
kill @s

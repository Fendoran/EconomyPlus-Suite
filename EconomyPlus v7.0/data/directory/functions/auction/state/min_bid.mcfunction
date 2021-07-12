## Sets item for auction
execute at @s rotated ~ 0 anchored eyes positioned ^ ^.25 ^1 run summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, CustomNameVisible:0b, NoGravity: 1b, PickupDelay: 32767s, Tags: ['ep.trait.auction_item','ep.trait.auction_item.display']}
execute positioned ^ ^.25 ^1 as @e[tag=ep.trait.auction_item] run scoreboard players operation @s ep.session = #ep.target_uid ep.session
execute as @e[tag=ep.trait.auction_item] run data modify entity @s Item set from storage ep:auction item
execute as @e[tag=ep.trait.auction_item] run data modify entity @s CustomName set from storage ep:auction item.name

scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.min_bid ep.state

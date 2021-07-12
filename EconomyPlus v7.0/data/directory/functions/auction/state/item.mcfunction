setblock ~ ~ ~ minecraft:oak_sign{Text1: '{"selector": "@p[tag=ep.auction.seller]"}'}
data modify storage ep:auction seller.name set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air

scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.item ep.state

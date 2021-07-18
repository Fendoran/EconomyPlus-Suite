execute as @a[tag=ep.caster] unless entity @s[distance=..5] run scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state
execute unless entity @a[tag=ep.caster] run scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state

function directory:terminal/node/general

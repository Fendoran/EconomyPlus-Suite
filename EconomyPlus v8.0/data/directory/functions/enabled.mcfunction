## Where everything is ran from

# Tooltip Killing
tag @e[tag=ep.trait.tooltip] add trait.kill

# Displays only online players in balance
scoreboard players add #ep.redisplay ep.variable 1
execute if score #ep.redisplay ep.variable matches 50.. run scoreboard players reset * ep.display_money
execute if score #ep.redisplay ep.variable matches 50.. run scoreboard players reset #ep.redisplay ep.variable

# relativistic timeline
scoreboard players add #ep.timeline ep.time 1


# initializes players when they join for the first time
execute as @a[tag=!global.ignore, tag=!ep.player.init] at @s run function directory:player/init

# runs for every initialized player every tick
execute as @a[tag=!global.ignore, tag=ep.player.init] at @s run function directory:player/main

execute as @e[tag=ep.trait.shop] at @s run function directory:shop/main
execute as @e[tag=ep.trait.float_tooltip] at @s run function directory:float_tooltip/main
execute as @e[tag=ep.trait.animation_player] at @s run function directory:animation/main
execute as @e[tag=ep.trait.floater] at @s run function directory:floater/main
execute as @e[tag=ep.trait.terminal] at @s run function directory:terminal/main
execute as @e[tag=ep.trait.player_shop] at @s run function directory:player_shop/main
execute as @e[tag=ep.trait.broken_market_shop] at @s run function directory:market/main
execute as @e[tag=ep.bank.sign.anchor] at @s run function directory:player/command/bank/anchor/main



execute if score #ep.auction.state ep.state = #ep.enum.auction.broadcast ep.state run function directory:auction/main

# Ensures that the vault minimum is always the lowest value possible
scoreboard players operation #ep.vault ep.variable > #ep.vault_minimum ep.variable


# Finally, kill the tooltip
execute as @e[tag=ep.trait.tooltip,tag=trait.kill] run kill @s

# Run plugins
function #economy_plus:tick

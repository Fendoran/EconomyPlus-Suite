## Sets up correct display for the shop/sign tooltips (ran by the shop)
execute as @e[tag=ep.trait.tooltip.description, tag=ep.spawning] run data modify entity @s CustomName set from storage ep:memory output_name
execute as @e[tag=ep.trait.tooltip.description, tag=ep.spawning] run data modify entity @s Item set from storage ep:memory output_item
execute store result score #ep.quantity ep.variable run data get storage ep:memory output_quantity

scoreboard players operation #ep.raw_time ep.variable = @s ep.time
execute unless score #ep.raw_time ep.variable = MAX_INT ep.variable as @e[tag=ep.trait.tooltip.timer,tag=ep.spawning] positioned 29999999 0 29999999 run function directory:shop/method/formatted_time
execute as @e[tag=ep.trait.tooltip.timer,tag=ep.spawning,nbt={CustomName: '{"color":"red","extra":[{"color":"#C0C0C0","text":":"},{"color":"red","extra":[{"color":"red","score":{"name":"#ep.minutes","objective":"ep.variable","value":"9"}}],"text":"0"},{"color":"#C0C0C0","text":":"},{"color":"red","score":{"name":"#ep.seconds","objective":"ep.variable","value":"42"}}],"score":{"name":"#ep.hours","objective":"ep.variable","value":"29826"}}'}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[tag=ep.trait.tooltip.timer,tag=ep.spawning,nbt={CustomName: '{"color":"red","extra":[{"color":"#C0C0C0","text":":"},{"color":"red","extra":[{"color":"red","score":{"name":"#ep.minutes","objective":"ep.variable","value":"9"}}],"text":"0"},{"color":"#C0C0C0","text":":"},{"color":"red","score":{"name":"#ep.seconds","objective":"ep.variable","value":"42"}}],"score":{"name":"#ep.hours","objective":"ep.variable","value":"29826"}}'}] run kill @s
execute unless score #ep.raw_time ep.variable = MAX_INT ep.variable as @e[tag=ep.trait.tooltip.gtimer,tag=ep.spawning] positioned 29999999 0 29999999 run function directory:shop/method/formatted_time_green
execute as @e[tag=ep.trait.tooltip.gtimer,tag=ep.spawning,nbt={CustomName: '{"color":"#32CD32","extra":[{"color":"#C0C0C0","text":":"},{"color":"#32CD32","extra":[{"color":"#32CD32","score":{"name":"#ep.minutes","objective":"ep.variable","value":"9"}}],"text":"0"},{"color":"#C0C0C0","text":":"},{"color":"#32CD32","score":{"name":"#ep.seconds","objective":"ep.variable","value":"42"}}],"score":{"name":"#ep.hours","objective":"ep.variable","value":"29826"}}'}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[tag=ep.trait.tooltip.gtimer,tag=ep.spawning,nbt={CustomName: '{"color":"#32CD32","extra":[{"color":"#C0C0C0","text":":"},{"color":"#32CD32","extra":[{"color":"#32CD32","score":{"name":"#ep.minutes","objective":"ep.variable","value":"9"}}],"text":"0"},{"color":"#C0C0C0","text":":"},{"color":"#32CD32","score":{"name":"#ep.seconds","objective":"ep.variable","value":"42"}}],"score":{"name":"#ep.hours","objective":"ep.variable","value":"29826"}}'}] run kill @s

execute if entity @s[tag=ep.trait.shop,tag=!ep.trait.market.sell] run scoreboard players operation #ep.use ep.variable = @s ep.use
execute if entity @s[tag=ep.trait.shop,tag=!ep.trait.market.sell] as @e[tag=ep.trait.tooltip.uses,tag=ep.spawning] run function directory:shop/method/formatted_number_uses

execute if entity @s[tag=ep.trait.market.sell] run scoreboard players operation #ep.price ep.variable = @s ep.stored_money
execute if entity @s[tag=ep.trait.market.sell] as @e[tag=ep.trait.tooltip.uses,tag=ep.spawning] run function directory:shop/method/formatted_earned_uses


execute if entity @s[tag=ep.trait.market.buy] run scoreboard players operation #ep.price ep.variable = @s ep.stored_money
execute if entity @s[tag=ep.trait.market.buy] as @e[tag=ep.trait.tooltip.currency_earned,tag=ep.spawning] run function directory:shop/method/formatted_earned


execute if entity @s[tag=ep.trait.market.sell] run scoreboard players operation #ep.use ep.variable = @s ep.use
execute if entity @s[tag=ep.trait.market.sell] run scoreboard players operation #ep.use ep.variable *= #ep.quantity ep.variable
execute if entity @s[tag=ep.trait.market.sell] as @e[tag=ep.trait.tooltip.currency_earned,tag=ep.spawning] run function directory:shop/method/formatted_number


execute as @e[tag=ep.trait.tooltip.owner, tag=ep.spawning] run data modify entity @s CustomName set from storage ep:memory output_owner

execute if entity @s[tag=ep.trait.market] as @e[tag=ep.trait.tooltip.out_of_stock,tag=ep.spawning] run data merge entity @s {CustomName:'{"text":"Out of Stock","color":"red"}'}

execute as @e[tag=ep.spawning] run tag @s remove ep.spawning

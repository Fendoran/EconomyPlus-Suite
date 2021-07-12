scoreboard players operation #ep.item_count ep.variable = ITEM_STACK ep.variable
execute if score #ep.total_quantity ep.variable < ITEM_STACK ep.variable run scoreboard players operation #ep.item_count ep.variable = #ep.total_quantity ep.variable

summon item ~ ~ ~ {Tags: ['ep.shop.product'], Item: {id: 'minecraft:stone', Count: 1b}, PickupDelay: 0s}

execute as @e[tag=ep.shop.product] run data modify entity @s Item set from storage ep:memory output_item
execute as @e[tag=ep.shop.product] store result entity @s Item.Count byte 1 run scoreboard players get #ep.item_count ep.variable
execute as @e[tag=ep.shop.product] run tag @s remove ep.shop.product

scoreboard players operation #ep.total_quantity ep.variable -= ITEM_STACK ep.variable
scoreboard players remove #ep.iteration ep.variable 1
execute if score #ep.iteration ep.variable matches 0.. run function directory:buyer/use/product

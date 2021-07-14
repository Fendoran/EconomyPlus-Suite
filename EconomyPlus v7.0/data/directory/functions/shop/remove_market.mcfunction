## Runs when the market shop is destroyed
# Summons floating entity
summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,NoGravity:0b,Invisible:1b,Tags:["ep.trait.broken_market_shop","ep.spawning"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:ender_chest",Count:1b}]}
scoreboard players operation @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] ep.session = #ep.target_uid ep.session
#scoreboard players operation @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] ep.owner = @s ep.owner
execute as @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] run function directory:uid/copy
scoreboard players operation #ep.market_reduction ep.variable = #ep.market.sign_cost ep.variable
scoreboard players operation #ep.market_reduction ep.variable *= #ep.market.fee ep.variable
scoreboard players operation #ep.market_reduction ep.variable /= 100 ep.variable
scoreboard players operation @s ep.stored_money += #ep.market.sign_cost ep.variable
scoreboard players operation @s ep.stored_money -= #ep.market_reduction ep.variable
scoreboard players operation @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] ep.stored_money = @s ep.stored_money

# store the total count of items into the floating armorstand
function directory:heap/method/get_quantity
function directory:heap/method/get_data
function directory:heap/method/get_name

data modify entity @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] CustomName set from storage ep:memory output_name

scoreboard players operation #ep.use ep.variable = @s ep.use
execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity
scoreboard players operation #ep.total_quantity ep.variable *= #ep.use ep.variable

scoreboard players operation @e[type=armor_stand,tag=ep.spawning,limit=1,sort=nearest] ep.use = #ep.use ep.variable

tag @e[tag=ep.spawning] remove ep.spawning

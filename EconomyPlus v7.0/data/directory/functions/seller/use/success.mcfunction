scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.receiver ep.money

function directory:seller/message/success_sell

# Used for the shop display of money spent (relative to shop)
scoreboard players operation #ep.admin_spent ep.variable += #ep.price ep.variable
# Money is removed from the vault
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.vault ep.variable -= #ep.price ep.variable
scoreboard players operation @s ep.income += #ep.price ep.variable

data modify storage ep:memory output set value []

scoreboard players operation #ep.iteration ep.variable = #ep.sell_count ep.variable
execute positioned 29999999 0 29999999 run function directory:seller/use/factory

data modify storage ep:memory raw_inventory set from storage ep:memory failed_list
data modify storage ep:memory raw_inventory append from storage ep:memory output[]

execute positioned 29999999 0 29999999 run function directory:player/inventory_writer/run

execute rotated as @s run function directory:seller/use/float_tooltip

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.seller, distance=..0.3] run function directory:shop/event/use
advancement grant @s[advancements={economy_plus:admin_shop_sell=false}] only economy_plus:admin_shop_sell

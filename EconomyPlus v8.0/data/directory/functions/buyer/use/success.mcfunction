scoreboard players operation #ep.sender ep.money = #ep.user_balance ep.variable
scoreboard players set #ep.receiver ep.money 0
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

# Used for the shop display of money earned (relative to shop)
scoreboard players operation #ep.admin_earned ep.variable += #ep.price ep.variable
# Money is sent to the vault
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.vault ep.variable += #ep.price ep.variable

scoreboard players operation @s ep.money = #ep.sender ep.money
execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity
function directory:buyer/message/success_purchase
execute rotated as @s run function directory:buyer/use/float_tooltip

execute at @s run function directory:buyer/use/factory

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.buyer, distance=..0.3] run function directory:shop/event/use
advancement grant @s[advancements={economy_plus:admin_shop_buy=false}] only economy_plus:admin_shop_buy

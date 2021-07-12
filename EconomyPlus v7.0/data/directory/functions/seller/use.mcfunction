function directory:ram/clear
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=ep.trait.seller, distance=..0.3] at @s if score @s ep.state = #ep.enum.sign.finish ep.state run function directory:seller/use/main

scoreboard players set #ep.state ep.state 0
execute if score @s ep.debt_state >= #ep.enum.debt.blacklist ep.state run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 unless score #ep.use ep.variable matches 1.. run scoreboard players set #ep.state ep.state 2

scoreboard players operation #ep.test_vault ep.variable = #ep.vault ep.variable
scoreboard players operation #ep.test_vault ep.variable -= #ep.price ep.variable
execute if score #ep.state ep.state matches 0 if score #ep.realistic_enabled ep.config matches 1 if score #ep.prevent_seller_if_empty ep.variable matches 1 if score #ep.test_vault ep.variable < #ep.vault_minimum ep.variable run scoreboard players set #ep.state ep.state 3

execute if score #ep.state ep.state matches 0 run function directory:seller/use/checker/main
execute if score #ep.state ep.state matches 1 run function directory:shop/message/blacklist
execute if score #ep.state ep.state matches 2 run function directory:seller/message/cooldown
execute if score #ep.state ep.state matches 3 run function directory:seller/message/vault_empty


function directory:ram/clear

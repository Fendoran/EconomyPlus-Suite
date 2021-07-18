execute unless score @s[tag=ep.trait.shop.use] ep.max_use = #ep.enum.shop.infinite_use ep.state run scoreboard players remove @s ep.use 1
execute unless score @s[tag=ep.trait.shop.use] ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/draw/current_use
execute unless score @s[tag=ep.trait.shop.use] ep.max_use = #ep.enum.shop.infinite_use ep.state if score @s ep.use matches ..0 run function directory:shop/event/cooldown

execute if score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run scoreboard players set @s ep.use 1
execute if score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/draw/hidden_use

execute if entity @s[tag=ep.trait.shop.normal] run tag @s add ep.click
execute if entity @s[tag=ep.trait.shop.dynamic] run tag @s add ep.click


execute if entity @s[tag=ep.trait.shop.dynamic] run function directory:shop/event/change_price

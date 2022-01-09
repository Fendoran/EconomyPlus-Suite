## Sets the quantity of the item in a shop
function directory:ram/clear

execute store result storage ep:memory input_quantity int 1 run scoreboard players get #ep.count ep.variable
function directory:heap/method/set_quantity

scoreboard players set @s[tag=!ep.trait.market] ep.use 1
scoreboard players set @s[tag=!ep.trait.shop.use] ep.max_use 0
execute if entity @s[tag=ep.trait.shop.use] run function directory:shop/init/max_use
execute if entity @s[tag=ep.trait.shop.dynamic] run function directory:shop/init/percent_change
execute if entity @s[tag=!ep.trait.shop.use,tag=!ep.trait.shop.dynamic] run function directory:shop/init/price

data modify block ~ ~ ~ Text3 set value '[{"text": "x", "color": "#ffffff"}, {"score": {"name": "#ep.count", "objective": "ep.variable"}, "color": "#C0C0C0"}]'

## Changes price of the object
scoreboard players operation #ep.current_price ep.variable = @s ep.money
scoreboard players operation #ep.current_price ep.variable *= @s ep.per_change
scoreboard players operation #ep.current_price ep.variable /= 100 ep.variable
execute if score #ep.current_price ep.variable matches 0 run scoreboard players add #ep.current_price ep.variable 1

scoreboard players operation @s[tag=ep.trait.buyer] ep.money += #ep.current_price ep.variable

execute if score @s ep.money matches ..1 run scoreboard players set #ep.current_price ep.variable 0
scoreboard players operation @s[tag=ep.trait.seller] ep.money -= #ep.current_price ep.variable


data modify block ~ ~ ~ Text4 set value '[{"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "@e[tag=ep.trait.shop,distance=...1]", "objective": "ep.money"}, "color": "#FFD700"}]'
execute if score @s ep.time matches ..-1 run function directory:shop/event/cooldown

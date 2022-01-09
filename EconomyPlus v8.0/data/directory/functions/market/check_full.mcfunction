## Checks if the player's inv is full of items
execute store result score #ep.check_full ep.variable run data get entity @s Inventory

# exclude offhand and armor slots
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove #ep.check_full ep.variable 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove #ep.check_full ep.variable 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove #ep.check_full ep.variable 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove #ep.check_full ep.variable 1
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove #ep.check_full ep.variable 1

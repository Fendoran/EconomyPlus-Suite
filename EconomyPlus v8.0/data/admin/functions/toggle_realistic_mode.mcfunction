## Toggles between realistic and simple mode (simple is default)
execute store result score #ep.realistic_enabled ep.config unless score #ep.realistic_enabled ep.config matches 1
execute if score #ep.realistic_enabled ep.config matches 1 run tellraw @s "Realistic mode is now enabled"
execute unless score #ep.realistic_enabled ep.config matches 1 run tellraw @s "Realistic mode is now disabled"

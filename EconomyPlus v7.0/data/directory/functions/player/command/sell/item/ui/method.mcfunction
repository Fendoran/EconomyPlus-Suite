## Error checks the item being sold
scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 unless data entity @s SelectedItem.Count run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 if data entity @s SelectedItem.tag.ctc.untradable run scoreboard players set #ep.state ep.state 2

execute if score #ep.state ep.state matches 0 run function directory:player/command/sell/item/main
execute if score #ep.state ep.state matches 1 run function directory:player/command/sell/message/empty_hand
execute if score #ep.state ep.state matches 2 run function directory:player/command/sell/message/untradable

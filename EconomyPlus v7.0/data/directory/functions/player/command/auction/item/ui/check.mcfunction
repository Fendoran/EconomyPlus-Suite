scoreboard players set #ep.state ep.state 0

execute if score #ep.state ep.state matches 0 unless data entity @s SelectedItem.Count run scoreboard players set #ep.state ep.state 1
execute if score #ep.state ep.state matches 0 if data entity @s SelectedItem.tag.ctc.untradable run scoreboard players set #ep.state ep.state 2

execute if score #ep.state ep.state matches 0 run function directory:player/command/auction/item/ui/success
execute if score #ep.state ep.state matches 1 run function directory:player/command/auction/item/ui/message/item_not_found
execute if score #ep.state ep.state matches 2 run function directory:player/command/auction/item/ui/message/untradeable_item

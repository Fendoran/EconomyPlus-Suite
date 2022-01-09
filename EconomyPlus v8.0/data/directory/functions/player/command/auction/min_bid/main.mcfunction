## Sets up min bid ui
function directory:ram/clear
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove
execute at @s rotated ~ 0 anchored eyes positioned ^ ^-1 ^1 run function directory:player/command/auction/min_bid/ui/main

data modify storage ep:memory input_item set from entity @s SelectedItem
execute positioned 29999999 0 29999999 run function directory:auction/method/get_name
data modify storage ep:auction item set from entity @s SelectedItem
data modify storage ep:auction item.name set from storage ep:memory output_name

item replace entity @s weapon.mainhand with minecraft:air

function directory:auction/state/min_bid

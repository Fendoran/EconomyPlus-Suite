## Constructs item from player slot
function directory:ram/clear
data modify storage ep:memory input_item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with minecraft:air
scoreboard players operation #ep.target_uid ep.session = @s ep.session

execute positioned ^ ^1.45 ^ run function directory:player_shop/constructor/new
execute as @e[tag=ep.spawning] run function directory:player/command/sell/item/builder

function directory:terminal/remove
execute positioned ^ ^.25 ^ run function directory:player/command/sell/price/ui/main

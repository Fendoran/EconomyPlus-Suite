## If item is valid, sets item, and begins the terminal interface
data modify storage ep:memory input_item set from entity @s SelectedItem
# Temporarily get the UUID of the shop owner
function directory:uid/get
#scoreboard players operation #ep.shop_owner ep.session = @s ep.session
scoreboard players operation #ep.target_uid ep.owner = @s ep.session
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function directory:market/constructor/new
execute as @e[tag=ep.spawning] run function directory:market/init/setup/builder

scoreboard players operation #ep.success ep.variable = #ep.enum.bool.true ep.state

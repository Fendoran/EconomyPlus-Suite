data modify storage ep:memory input_item set from entity @s SelectedItem

scoreboard players operation #ep.target_uid ep.owner = @s ep.session

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function directory:seller/constructor/new
execute as @e[tag=ep.spawning] run function directory:seller/init/setup/builder

scoreboard players operation #ep.success ep.variable = #ep.enum.bool.true ep.state

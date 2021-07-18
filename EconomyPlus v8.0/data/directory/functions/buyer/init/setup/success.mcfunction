## If item is valid, sets item, and begins the terminal interface
data modify storage ep:memory input_item set from entity @s SelectedItem

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function directory:buyer/constructor/new

# Sets the owner of the terminal, which can help prevent other players from clicking the terminal
scoreboard players operation #ep.target_uid ep.owner = @s ep.session
execute as @e[tag=ep.spawning] run function directory:buyer/init/setup/builder

scoreboard players operation #ep.success ep.variable = #ep.enum.bool.true ep.state

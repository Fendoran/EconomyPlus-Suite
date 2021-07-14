## When a shop is found, this command is ran to display the items
# Clears the ram used for data storage
function directory:ram/clear

# Sets score of #ep.target_uid ep.session to shop's uid, and owner uid (if available)
scoreboard players operation #ep.target_uid ep.session = @s ep.session

function directory:heap/method/get_data


execute if block ~ ~ ~ #minecraft:wall_signs positioned ^ ^ ^-0.2 run function directory:player/tooltip/tooltip
execute unless block ~ ~ ~ #minecraft:wall_signs positioned ^ ^0.3 ^ run function directory:player/tooltip/tooltip

function directory:player/tooltip/display

scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.true ep.state

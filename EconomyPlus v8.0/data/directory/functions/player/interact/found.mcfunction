## Runs if player is looking at a terminal elements
scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @e[tag=ep.terminal.submit] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.reactive_element
execute as @e[tag=ep.terminal.text] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.element_type
execute as @e[tag=ep.terminal.marker] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.marker_element
execute if entity @s[tag=ep.terminal.submit] run function directory:player/interact/type/submit
execute if entity @s[tag=ep.terminal.button] run function directory:player/interact/type/button
execute if entity @s[tag=ep.terminal.number] run function directory:player/interact/type/number

function directory:player/interact/effect

tag @e[tag=ep.reactive_element] remove ep.reactive_element
tag @e[tag=ep.element_type] remove ep.element_type
tag @e[tag=ep.marker_element] remove ep.marker_element
scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.true ep.state

## Runs if the player has successfully found a UI element
# Sets the #ep.target_uid to the player's UID
scoreboard players operation #ep.target_uid ep.session = @s ep.session

# define tag ep.reactive_element
execute as @e[tag=ep.trait.ui.submit] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.reactive_element

# Determines which UI element the player is looking at
execute if entity @s[tag=ep.trait.ui.button] run function directory:ui/interact/type/button
execute if entity @s[tag=ep.trait.ui.submit] run function directory:ui/interact/type/submit
execute if entity @s[tag=ep.trait.ui.number] run function directory:ui/interact/type/number
execute if entity @s[tag=ep.trait.ui.exit] run function directory:ui/interact/type/exit

function directory:ui/interact/effect

tag @e[tag=ep.reactive_element] remove ep.reactive_element
scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.true ep.state

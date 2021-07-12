## Runs if player has interacted with a UI element
tag @s add ep.caster
scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.false ep.state
scoreboard players operation #ep.target_uid ep.owner = @s ep.session
execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function directory:ui/interact/raycast
tag @s remove ep.caster

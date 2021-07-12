## Gives the player a new terminal session
# executor = player creating a session
scoreboard players add ep.current_session ep.variable 1
scoreboard players operation @s ep.session = ep.current_session ep.variable

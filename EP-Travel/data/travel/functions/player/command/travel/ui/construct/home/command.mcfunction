## Prepares player to tp to their spawnpoint
function directory:terminal/event/close_terminal

scoreboard players operation @s ep.pre_tp = #ep.terminal.pre_teleport_cooldown ep.variable
tag @s add ep.trait.player.teleport.home
function travel:player/method/get_coords

## Prepares player to tp to auction
function directory:terminal/event/close_terminal

scoreboard players operation @s ep.pre_tp = #ep.terminal.pre_teleport_cooldown ep.variable
tag @s add ep.trait.player.teleport.auction
function travel:player/method/get_coords

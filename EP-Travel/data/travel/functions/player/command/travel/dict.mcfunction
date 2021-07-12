## Checks terminal button if the button pressed belongs to the travel plugin
execute if entity @s[tag=ep.dir.teleport] run function travel:player/command/travel/interact

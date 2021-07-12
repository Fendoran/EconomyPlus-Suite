# Prepares terminal for travel
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove

execute anchored eyes rotated ~ 0 positioned ^ ^-0.75 ^2 run function travel:player/command/travel/ui/main
advancement grant @s[advancements={economy_plus:use_travel=false}] only economy_plus:use_travel

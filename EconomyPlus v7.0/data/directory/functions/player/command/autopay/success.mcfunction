## Runs when sign is clicked, or /trigger autopay is successful
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove

execute rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 run function directory:player/command/autopay/toggle/ui/main

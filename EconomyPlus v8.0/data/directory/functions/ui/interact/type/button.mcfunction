## Runs when the player has clicked their UI button
# branches into back and reset buttons & arrows
execute if entity @s[tag=ep.trait.ui.back] run function directory:ui/signal/back
execute if entity @s[tag=ep.trait.ui.reset] run function directory:ui/signal/reset
execute if entity @s[tag=ep.trait.ui.arrow] run function directory:ui/signal/arrow

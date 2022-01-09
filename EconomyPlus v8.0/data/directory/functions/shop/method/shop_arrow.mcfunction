## Activates when the back button is pressed on the UI for shop signs
execute if score #ep.ui.value ep.variable matches ..-1 run scoreboard players set #ep.ui.value ep.variable 2
execute if score #ep.ui.value ep.variable matches 3.. run scoreboard players set #ep.ui.value ep.variable 0

function directory:ui/method/draw

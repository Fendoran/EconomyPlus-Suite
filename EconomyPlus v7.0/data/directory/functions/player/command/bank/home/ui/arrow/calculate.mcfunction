## Activates when the back button is pressed on the UI for shop signs

execute if score #ep.ui.value ep.variable matches ..-1 run scoreboard players set #ep.ui.value ep.variable 5
execute if score #ep.ui.value ep.variable matches 6.. run scoreboard players set #ep.ui.value ep.variable 0

function directory:player/command/bank/home/ui/draw

execute unless score @p[tag=ep.caster] ep.bounty matches 1.. if score #ep.ui.value ep.variable matches 4 run function directory:player/command/bank/home/ui/arrow/recalculate

execute unless score #ep.bounty.payoff ep.variable matches 1 if score #ep.ui.value ep.variable matches 4 run function directory:player/command/bank/home/ui/arrow/recalculate

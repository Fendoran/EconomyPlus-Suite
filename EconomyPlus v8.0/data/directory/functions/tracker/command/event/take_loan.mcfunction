# Activates when player wants to take a loan
function directory:player/method/is_near_bed
scoreboard players operation #fr.state fr.state = #fr.enum.loan.idle fr.state
execute if score #fr.state fr.state = #fr.enum.loan.idle fr.state if score #fr.loan.enabled fr.config matches 0 run scoreboard players set #fr.state fr.state 5
execute if score #fr.state fr.state = #fr.enum.loan.idle fr.state unless entity @s[tag=fendoran.player.inside_floater.bank] unless score #fr.is_near_bed fr.variable = #fr.enum.bool.true fr.state run scoreboard players operation #fr.state fr.state = #fr.enum.loan.invalid_location fr.state
execute if score #fr.state fr.state = #fr.enum.loan.idle fr.state unless score @s fr.debt matches 0 run scoreboard players operation #fr.state fr.state = #fr.enum.loan.in_debt fr.state

execute if score #fr.state fr.state = #fr.enum.loan.idle fr.state run function directory:player/command/loan/success
execute if score #fr.state fr.state = #fr.enum.loan.invalid_location fr.state run function directory:tracker/command/message/loan/invalid_location
execute if score #fr.state fr.state = #fr.enum.loan.in_debt fr.state run function directory:tracker/command/message/loan/in_debt
execute if score #fr.state fr.state matches 5 run function directory:tracker/command/message/loan/disabled

function directory:player/method/is_near_bed
scoreboard players operation #fr.state fr.state = #fr.enum.bank.idle fr.state

execute if score #fr.state fr.state = #fr.enum.bank.idle fr.state unless entity @s[tag=fendoran.player.inside_floater.bank] unless score #fr.is_near_bed fr.variable = #fr.enum.bool.true fr.state run scoreboard players operation #fr.state fr.state = #fr.enum.bank.invalid_location fr.state
execute if score #fr.state fr.state = #fr.enum.bank.idle fr.state if score @s fr.debt matches 0 run scoreboard players operation #fr.state fr.state = #fr.enum.bank.not_in_debt fr.state

execute if score #fr.state fr.state = #fr.enum.bank.idle fr.state run function directory:player/command/credit/success
execute if score #fr.state fr.state = #fr.enum.bank.invalid_location fr.state run function directory:tracker/command/message/credit/invalid_location
execute if score #fr.state fr.state = #fr.enum.bank.not_in_debt fr.state run function directory:tracker/command/message/credit/not_in_debt

function directory:player/method/is_near_bed
scoreboard players operation #fr.state fr.state = #fr.enum.deposit.idle fr.state
execute if score #fr.state fr.state = #fr.enum.deposit.idle fr.state unless entity @s[tag=fendoran.player.inside_floater.bank] unless score #fr.is_near_bed fr.variable = #fr.enum.bool.true fr.state run scoreboard players operation #fr.state fr.state = #fr.enum.deposit.invalid_location fr.state

execute if score #fr.state fr.state = #fr.enum.deposit.invalid_location fr.state run function directory:tracker/command/message/deposit/invalid_location
execute if score #fr.state fr.state = #fr.enum.deposit.idle fr.state run function directory:player/command/deposit/success

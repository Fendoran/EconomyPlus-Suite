function directory:player/method/is_near_bed
scoreboard players operation #fr.state fr.state = #fr.enum.withdraw.idle fr.state

execute if score #fr.state fr.state = #fr.enum.withdraw.idle fr.state unless entity @s[tag=fendoran.player.inside_floater.bank] unless score #fr.is_near_bed fr.variable = #fr.enum.bool.true fr.state run scoreboard players operation #fr.state fr.state = #fr.enum.withdraw.invalid_location fr.state

execute if score #fr.state fr.state = #fr.enum.withdraw.idle fr.state run function directory:player/command/withdraw/success
execute if score #fr.state fr.state = #fr.enum.withdraw.invalid_location fr.state run function directory:tracker/command/message/withdraw/invalid_location

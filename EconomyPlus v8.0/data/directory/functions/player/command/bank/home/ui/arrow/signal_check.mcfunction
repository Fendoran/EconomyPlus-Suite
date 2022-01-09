execute as @e[tag=ep.terminal.bank.draw] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:player/command/bank/home/ui/arrow/calculate

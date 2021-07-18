## Opens UI for taking a loan
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove

## Sets a new value for max loan size, based on current bank value
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.loan.current_max_loan ep.variable = #ep.vault ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.loan.current_max_loan ep.variable *= #ep.max_loan_percent ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.loan.current_max_loan ep.variable /= 100 ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.loan.current_max_loan ep.variable < #ep.loan.max_loan ep.variable
execute unless score #ep.realistic_enabled ep.config matches 1 run scoreboard players operation #ep.loan.current_max_loan ep.variable = #ep.loan.max_loan ep.variable

execute rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 run function directory:player/command/loan/ui/main

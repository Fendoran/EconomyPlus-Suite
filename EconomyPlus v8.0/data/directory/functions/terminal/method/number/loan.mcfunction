## Sets Loan to cap

execute if score #ep.ui.value ep.variable > #ep.loan.current_max_loan ep.variable run scoreboard players operation #ep.ui.value ep.variable = #ep.loan.current_max_loan ep.variable
execute if score #ep.realistic_enabled ep.config matches 1 if score #ep.ui.value ep.variable > @s ep.highest_money run scoreboard players operation #ep.ui.value ep.variable = @s ep.highest_money

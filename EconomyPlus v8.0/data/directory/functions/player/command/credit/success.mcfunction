## Runs when sign is clicked, or /trigger credit is successful
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove

execute unless score @s ep.debt matches 0 rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 run function directory:player/command/credit/ui/main
execute if score @s ep.debt matches 0 run tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "You currently are not in debt.  You can take a loan at ", "color": "#32CD32"}, {"score": {"name": "#ep.loan.interest_rate", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": "%", "color": "#FFD700"}, {"text": " interest rate.", "color": "#32CD32"}]

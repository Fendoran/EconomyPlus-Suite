## Maps functions to specific entities for player terminal
# Home
execute if entity @s[tag=ep.terminal.bank.deposit] run function directory:player/command/bank/home/ui/deposit/signal
execute if entity @s[tag=ep.terminal.bank.loan] run function directory:player/command/bank/home/ui/loan/signal
execute if entity @s[tag=ep.terminal.bank.credit] run function directory:player/command/bank/home/ui/credit/signal
execute if entity @s[tag=ep.terminal.bank.withdraw] run function directory:player/command/bank/home/ui/withdraw/signal
execute if entity @s[tag=ep.terminal.bank.return_bounty] run function directory:player/command/bank/home/ui/return_bounty/signal
execute if entity @s[tag=ep.terminal.bank.autopay] run function directory:player/command/bank/home/ui/autopay/signal

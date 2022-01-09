## Maps functions to specific entities for admin terminal
# Loan in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.max] run function directory:terminal/signal/admin_setting/home/settings/bank/loan/max
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.max_percent] run function directory:terminal/signal/admin_setting/home/settings/bank/loan/max_percent
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.interest_rate] run function directory:terminal/signal/admin_setting/home/settings/bank/loan/interest_rate

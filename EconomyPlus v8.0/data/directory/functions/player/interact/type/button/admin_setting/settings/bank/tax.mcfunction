## Maps functions to specific entities for admin terminal
# Tax in bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.tax.min_income] run function directory:terminal/signal/admin_setting/home/settings/bank/tax/min_income
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.tax.rate] run function directory:terminal/signal/admin_setting/home/settings/bank/tax/rate

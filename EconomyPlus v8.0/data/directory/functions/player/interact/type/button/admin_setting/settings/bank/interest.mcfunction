## Maps functions to specific entities for admin terminal
# Interest in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.min_vault] run function directory:terminal/signal/admin_setting/home/settings/bank/interest/min_vault
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.rate] run function directory:terminal/signal/admin_setting/home/settings/bank/interest/rate
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.min_bank] run function directory:terminal/signal/admin_setting/home/settings/bank/interest/min_bank

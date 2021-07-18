## Bank Settings
# Vault in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.minimum] run function admin:settings/home/settings/bank/vault/vault/minimum/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_enabled] run function admin:settings/home/settings/bank/vault/vault/stop_selling/signal_enabled
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_disabled] run function admin:settings/home/settings/bank/vault/vault/stop_selling/signal_disabled
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.debt_rate] run function admin:settings/home/settings/bank/vault/vault/debt_rate/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.debt_interval] run function admin:settings/home/settings/bank/vault/vault/debt_interval/signal

# Interest in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.min_vault] run function admin:settings/home/settings/bank/vault/interest/min_vault/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.rate] run function admin:settings/home/settings/bank/vault/interest/rate/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.min_bank] run function admin:settings/home/settings/bank/vault/interest/min_bank/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.interval] run function admin:settings/home/settings/bank/vault/interest/interval/signal

# Loan in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.max] run function admin:settings/home/settings/bank/vault/loan/max/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.max_percent] run function admin:settings/home/settings/bank/vault/loan/max_percent/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.loan.interest_rate] run function admin:settings/home/settings/bank/vault/loan/interest_rate/signal

# Tax in bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.tax.min_income] run function admin:settings/home/settings/bank/vault/tax/min_income/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.tax.rate] run function admin:settings/home/settings/bank/vault/tax/rate/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.tax.interval] run function admin:settings/home/settings/bank/vault/tax/interval/signal

# Reward in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.other.amount] run function admin:settings/home/settings/bank/daily_reward/amount/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.other.bounty] run function admin:settings/home/settings/bank/bounty/bounty/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.other.bounty_decrease] run function admin:settings/home/settings/bank/bounty/bounty_decrease/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.death.lost] run function admin:settings/home/settings/bank/death/lost/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.death.dropped] run function admin:settings/home/settings/bank/death/dropped/signal

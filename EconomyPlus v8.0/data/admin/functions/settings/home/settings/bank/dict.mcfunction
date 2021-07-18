## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.back] run function admin:settings/home/settings/bank/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.back] run function admin:settings/home/settings/bank/vault/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.loan] run function admin:settings/home/settings/bank/vault/loan/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault] run function admin:settings/home/settings/bank/vault/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.vault] run function admin:settings/home/settings/bank/vault/vault/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.interest] run function admin:settings/home/settings/bank/vault/interest/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.tax] run function admin:settings/home/settings/bank/vault/tax/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.bounty] run function admin:settings/home/settings/bank/bounty/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.daily_reward] run function admin:settings/home/settings/bank/daily_reward/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.death] run function admin:settings/home/settings/bank/death/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling.back] run function admin:settings/home/settings/bank/vault/stop_sellilng/back/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.rate.back] run function admin:settings/home/settings/bank/interest/rate/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.interest.min_bank.back] run function admin:settings/home/settings/bank/interest/min_bank/back/signal

## Maps functions to specific entities for admin terminal
# Settings
# Vault in Bank
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.minimum] run function directory:terminal/signal/admin_setting/home/settings/bank/vault/minimum
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_enabled] run function directory:terminal/signal/admin_setting/home/settings/bank/vault/stop_selling_enabled
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_disabled] run function directory:terminal/signal/admin_setting/home/settings/bank/vault/stop_selling_disabled

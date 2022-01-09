## Maps functions to specific entities for admin terminal
# Signs
execute if entity @s[tag=ep.terminal.admin_setting.home.other.trading_currency] run function admin:settings/home/other/trading_currency/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.trading_currency.gold_coin] run function admin:settings/home/other/trading_currency/gold_coin/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.trading_currency.silver_coin] run function admin:settings/home/other/trading_currency/silver_coin/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.debug] run function admin:settings/home/other/debug/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.uninstall] run function admin:settings/home/other/uninstall/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.list_player_balance] run function admin:settings/home/other/list_player_balance/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.other.back] run function admin:settings/home/other/signal

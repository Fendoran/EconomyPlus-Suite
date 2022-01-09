## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_display.actionbar] run function admin:settings/home/settings/money_display/actionbar/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_display.list] run function admin:settings/home/settings/money_display/list/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_display.sidebar] run function admin:settings/home/settings/money_display/sidebar/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_display.below_name] run function admin:settings/home/settings/money_display/below_name/signal

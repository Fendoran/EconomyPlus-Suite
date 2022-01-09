## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop.mobs] run function admin:settings/home/settings/money_drop/mobs/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop.wood] run function admin:settings/home/settings/money_drop/wood/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop.ore] run function admin:settings/home/settings/money_drop/ore/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop.farming] run function admin:settings/home/settings/money_drop/farming/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop.fishing] run function admin:settings/home/settings/money_drop/fishing/signal

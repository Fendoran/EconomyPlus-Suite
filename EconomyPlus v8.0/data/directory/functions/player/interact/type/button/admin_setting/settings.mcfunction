## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.back] run function admin:settings/home/settings/back/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_display] run function admin:settings/home/settings/money_display/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.money_drop] run function admin:settings/home/settings/money_drop/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.player_shop] run function admin:settings/home/settings/player_shop/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports] run function admin:settings/home/settings/teleports/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.bank] run function admin:settings/home/settings/bank/signal

execute if entity @s[tag=ep.dir.admin.settings.money_display] run function directory:player/interact/type/button/admin_setting/settings/money_display
execute if entity @s[tag=ep.dir.admin.settings.money_drop] run function directory:player/interact/type/button/admin_setting/settings/money_drop
execute if entity @s[tag=ep.dir.admin.settings.player_shop] run function directory:player/interact/type/button/admin_setting/settings/player_shop
execute if entity @s[tag=ep.dir.admin.settings.teleports] run function directory:player/interact/type/button/admin_setting/settings/teleports
execute if entity @s[tag=ep.dir.admin.settings.bank] run function admin:settings/home/settings/bank/dict

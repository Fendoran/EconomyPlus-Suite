## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.back] run function admin:settings/home/settings/teleports/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.home] run function admin:settings/home/settings/teleports/home/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.spawn] run function admin:settings/home/settings/teleports/spawn/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.shop] run function admin:settings/home/settings/teleports/shop/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.bank] run function admin:settings/home/settings/teleports/bank/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.auction] run function admin:settings/home/settings/teleports/auction/signal

execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.home.back] run function admin:settings/home/settings/teleports/home/cost/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.spawn.back] run function admin:settings/home/settings/teleports/spawn/cost/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.shop.back] run function admin:settings/home/settings/teleports/shop/cost/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.bank.back] run function admin:settings/home/settings/teleports/bank/cost/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.teleports.auction.back] run function admin:settings/home/settings/teleports/auction/cost/back/signal

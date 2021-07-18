## Maps functions to specific entities for admin terminal
# Settings
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.player_shop.cost] run function admin:settings/home/settings/player_shop/cost/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.settings.player_shop.cost.back] run function admin:settings/home/settings/back/signal

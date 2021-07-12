## Maps functions to specific entities for admin terminal
# Floater
execute if entity @s[tag=ep.terminal.admin_setting.home.floater.shop] run function admin:settings/home/floater/shop/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.floater.spawn] run function admin:settings/home/floater/spawn/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.floater.auction] run function admin:settings/home/floater/auction/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.floater.bank] run function admin:settings/home/floater/bank/signal
execute if entity @s[tag=ep.terminal.admin_setting.home.floater.remover] run function admin:settings/home/floater/remover/signal

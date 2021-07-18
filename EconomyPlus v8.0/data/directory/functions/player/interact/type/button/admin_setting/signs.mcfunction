## Maps functions to specific entities for admin terminal
# Signs
execute if entity @s[tag=ep.terminal.admin_setting.signs.back] run function admin:settings/home/signs/signal

execute if entity @s[tag=ep.terminal.admin_setting.signs.buy] run function admin:settings/home/signs/buy/signal
execute if entity @s[tag=ep.terminal.admin_setting.signs.sell] run function admin:settings/home/signs/sell/signal
execute if entity @s[tag=ep.terminal.admin_setting.signs.bank] run function admin:settings/home/signs/bank/signal



execute if entity @s[tag=ep.dir.admin.signs.buy] run function directory:player/interact/type/button/admin_setting/signs/buy
execute if entity @s[tag=ep.dir.admin.signs.sell] run function directory:player/interact/type/button/admin_setting/signs/sell
execute if entity @s[tag=ep.dir.admin.signs.bank] run function directory:player/interact/type/button/admin_setting/signs/bank

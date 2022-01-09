## Maps functions to specific entities for admin terminal
# Home
execute if entity @s[tag=ep.terminal.admin_setting.back] run function admin:settings/home/back/signal

execute if entity @s[tag=ep.terminal.admin_setting.home] run function admin:settings/home/back/signal
execute if entity @s[tag=ep.terminal.admin_setting.signs] run function admin:settings/home/signs/signal
execute if entity @s[tag=ep.terminal.admin_setting.floater] run function admin:settings/home/floater/signal
execute if entity @s[tag=ep.terminal.admin_setting.settings] run function admin:settings/home/settings/signal
execute if entity @s[tag=ep.terminal.admin_setting.other] run function admin:settings/home/other/signal

execute if entity @s[tag=ep.dir.admin.signs] run function directory:player/interact/type/button/admin_setting/signs
execute if entity @s[tag=ep.dir.admin.floater] run function directory:player/interact/type/button/admin_setting/floater
execute if entity @s[tag=ep.dir.admin.settings] run function directory:player/interact/type/button/admin_setting/settings
execute if entity @s[tag=ep.dir.admin.other] run function directory:player/interact/type/button/admin_setting/other

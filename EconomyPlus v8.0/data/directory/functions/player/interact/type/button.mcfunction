## Search for button press in terminal UI
execute if entity @s[tag=ep.terminal.reset] run function directory:terminal/ui/button/reset/signal
execute if entity @s[tag=ep.terminal.back] run function directory:terminal/ui/button/back/signal
execute if entity @s[tag=ep.terminal.sign_arrow,tag=ep.dir.admin] run function admin:settings/home/signs/arrow/signal
execute if entity @s[tag=ep.terminal.sign_arrow,tag=ep.dir.bank] run function directory:player/command/bank/home/ui/arrow/signal

execute if entity @s[tag=ep.terminal.max] as @e[tag=ep.reactive_element] run function directory:terminal/ui/button/max/signal

execute if entity @s[tag=ep.dir.admin] run function directory:player/interact/type/button/admin_setting
execute if entity @s[tag=ep.dir.settings] run function directory:player/interact/type/button/settings
execute if entity @s[tag=ep.dir.market] run function directory:player/interact/type/button/market
execute if entity @s[tag=ep.dir.bank] run function directory:player/interact/type/button/bank

function #economy_plus:terminal_dict

## Maps functions to specific entities for player terminal
# Home
execute if entity @s[tag=ep.terminal.player_setting.home.actionbar] run function directory:player/command/settings/home/ui/actionbar/signal
execute if entity @s[tag=ep.terminal.player_setting.home.announcement] run function directory:player/command/settings/home/ui/announcement/signal
execute if entity @s[tag=ep.terminal.player_setting.home.book] run function directory:player/command/settings/home/ui/book/signal

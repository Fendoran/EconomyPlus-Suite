## Home for settings ui
scoreboard players operation #ep.actionbar ep.state = @s ep.actionbar
scoreboard players operation #ep.announcement ep.state = @s ep.announcement
function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function directory:player/command/settings/home/ui/marker/construct
execute positioned ^ ^0.0 ^ run function directory:player/command/settings/home/ui/construct
execute positioned ^0 ^-0.4 ^ run function directory:player/command/settings/home/ui/actionbar/construct
execute positioned ^0 ^-0.8 ^ run function directory:player/command/settings/home/ui/announcement/construct
execute if entity @s[scores={ep.book_time=72000..}] positioned ^0 ^-1.2 ^ run function directory:player/command/settings/home/ui/book/construct

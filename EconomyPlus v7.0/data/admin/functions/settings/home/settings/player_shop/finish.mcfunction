tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.player_shop
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
function directory:terminal/constructor/finalize
execute if score #ep.player_shop.enabled ep.config matches 0 run data modify entity @s CustomName set value '[{"text": "Player Shops", "color": "#C0C0C0"}]'
execute if score #ep.player_shop.enabled ep.config matches 1 run data modify entity @s CustomName set value '[{"text": "Player Shops", "color": "#ffffff"}]'

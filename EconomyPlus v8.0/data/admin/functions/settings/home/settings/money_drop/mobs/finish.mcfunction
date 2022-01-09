tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.money_drop.mobs
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.money_drop
function directory:terminal/constructor/finalize
execute if score #ep.money_drop.mobs ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Mobs", "color": "#C0C0C0"}]'
execute if score #ep.money_drop.mobs ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Mobs", "color": "#ffffff"}]'

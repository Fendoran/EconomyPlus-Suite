tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.money_drop.farming
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.money_drop
function directory:terminal/constructor/finalize
execute if score #ep.money_drop.farming ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Farming", "color": "#C0C0C0"}]'
execute if score #ep.money_drop.farming ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Farming", "color": "#ffffff"}]'

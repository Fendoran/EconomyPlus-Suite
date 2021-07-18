tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.money_display.actionbar
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.money_display
function directory:terminal/constructor/finalize
execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Actionbar", "color": "#C0C0C0"}]'
execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Actionbar", "color": "#ffffff"}]'

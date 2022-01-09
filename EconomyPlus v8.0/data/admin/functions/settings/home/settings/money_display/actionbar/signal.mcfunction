scoreboard players operation #ep.ui.value ep.variable = #ep.actionbar_statistic ep.config
execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run function config:actionbar/enable
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run function config:actionbar/disable
execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Actionbar", "color": "#C0C0C0"}]'
execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Actionbar", "color": "#ffffff"}]'

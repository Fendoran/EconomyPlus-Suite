scoreboard players operation #ep.ui.value ep.variable = #ep.list_statistic ep.config
execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run function config:list/enable
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run function config:list/disable
execute if score #ep.list_statistic ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "List", "color": "#C0C0C0"}]'
execute if score #ep.list_statistic ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "List", "color": "#ffffff"}]'

scoreboard players operation #ep.ui.value ep.variable = #ep.sidebar_statistic ep.config
execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run function config:sidebar/enable
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run function config:sidebar/disable
execute if score #ep.sidebar_statistic ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Sidebar", "color": "#C0C0C0"}]'
execute if score #ep.sidebar_statistic ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Sidebar", "color": "#ffffff"}]'

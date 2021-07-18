scoreboard players operation #ep.ui.value ep.variable = #ep.below_name_statistic ep.config
execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run function config:below_name/enable
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run function config:below_name/disable
execute if score #ep.below_name_statistic ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Below Name", "color": "#C0C0C0"}]'
execute if score #ep.below_name_statistic ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Below Name", "color": "#ffffff"}]'

scoreboard players operation #ep.ui.value ep.variable = #ep.money_drop.fishing ep.config
execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run function config:money_drop/fishing/enable
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run function config:money_drop/fishing/disable
execute if score #ep.money_drop.fishing ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Fishing", "color": "#C0C0C0"}]'
execute if score #ep.money_drop.fishing ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Fishing", "color": "#ffffff"}]'

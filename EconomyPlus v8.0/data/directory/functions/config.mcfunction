## Sets up and loads the default config values if they are not set
execute unless score #ep.list_statistic ep.config matches -2147483648..2147483647 run function config:list/enable
execute unless score #ep.sidebar_statistic ep.config matches -2147483648..2147483647 run function config:sidebar/enable
execute unless score #ep.actionbar_statistic ep.config matches -2147483648..2147483647 run function config:actionbar/enable
execute unless score #ep.below_name_statistic ep.config matches -2147483648..2147483647 run function config:below_name/disable
execute unless score #ep.teleport ep.config matches -2147483648..2147483647 run function config:teleport/enable
execute unless score #ep.mob_currency ep.config matches -2147483648..2147483647 run function config:mob_currency/disable

scoreboard players operation #ep.enabled ep.config = #ep.enum.bool.true ep.state

scoreboard players operation #ep.ui.value ep.variable = @e[type=area_effect_cloud,tag=ep.terminal.bank.draw,limit=1,sort=nearest] ep.variable
scoreboard players operation #ep.ui.value ep.variable += @s ep.variable
scoreboard players operation #ep.test ep.variable = @s ep.variable

scoreboard players operation #ep.target_uid ep.session = @s ep.session


execute if score @s ep.session = #ep.target_uid ep.session run function directory:player/command/bank/home/ui/arrow/signal_check

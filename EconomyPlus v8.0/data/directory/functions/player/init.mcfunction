## Initialzes the players
# executor = un-initialized players

execute store result score @s ep.uid0 run data get entity @s UUID[0]
execute store result score @s ep.uid1 run data get entity @s UUID[1]
execute store result score @s ep.uid2 run data get entity @s UUID[2]
execute store result score @s ep.uid3 run data get entity @s UUID[3]

scoreboard players operation @s travel = #ep.enum.command.idle ep.state
scoreboard players operation @s auction = #ep.enum.command.idle ep.state
scoreboard players operation @s bid = #ep.enum.command.idle ep.state
scoreboard players operation @s sell = #ep.enum.command.idle ep.state
scoreboard players operation @s pay = #ep.enum.command.idle ep.state
scoreboard players operation @s bank = #ep.enum.command.idle ep.state
scoreboard players operation @s currency = #ep.enum.command.idle ep.state
scoreboard players operation @s commands = #ep.enum.command.idle ep.state
scoreboard players operation @s settings = #ep.enum.command.idle ep.state
scoreboard players operation @s ep.money = #ep.start_money ep.variable
scoreboard players operation @s ep.bank = #ep.start_bank ep.variable
scoreboard players operation @s ep.balance = #ep.enum.bool.false ep.state
scoreboard players operation @s ep.tp_cooldown = #ep.enum.bool.false ep.state
scoreboard players operation @s ep.debt_state = #ep.enum.debt.idle ep.state
scoreboard players operation @s ep.actionbar = #ep.actionbar_statistic ep.config
scoreboard players set @s ep.book_time 72000
scoreboard players operation @s ep.debt.cscore = #ep.default.credit_score ep.config

tag @s add ep.player.init
advancement grant @a[advancements={economy_plus:root=false}] only economy_plus:root

# prepares players with special plugin data
function #economy_plus:player_load

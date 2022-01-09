scoreboard objectives remove ep.display_money
scoreboard objectives remove ep.money
scoreboard objectives remove ep.bank
scoreboard objectives remove ep.highest_monet
scoreboard objectives remove ep.debt
scoreboard objectives remove ep.debt_state
scoreboard objectives remove ep.debt_start
scoreboard objectives remove ep.debt_time
scoreboard objectives remove ep.variable
scoreboard objectives remove ep.config
scoreboard objectives remove ep.state
scoreboard objectives remove ep.session
scoreboard objectives remove ep.interact
scoreboard objectives remove ep.time
scoreboard objectives remove ep.reset_time
scoreboard objectives remove ep.end_time
scoreboard objectives remove ep.use
scoreboard objectives remove ep.max_use
scoreboard objectives remove ep.animation
scoreboard objectives remove ep.tp_cooldown
scoreboard objectives remove ep.tp_cooldown1
scoreboard objectives remove ep.tp_cooldown2
scoreboard objectives remove ep.tp_cooldown3
scoreboard objectives remove ep.tp_cooldown4
scoreboard objectives remove ep.actionbar
scoreboard objectives remove travel
scoreboard objectives remove auction
scoreboard objectives remove bid
scoreboard objectives remove loan
scoreboard objectives remove credit
scoreboard objectives remove debt
scoreboard objectives remove deposit
scoreboard objectives remove withdraw
scoreboard objectives remove pay
scoreboard objectives remove balance
scoreboard objectives remove bank
scoreboard objectives remove sell
scoreboard objectives remove buy
scoreboard objectives remove commands
scoreboard objectives remove actionbar
scoreboard objectives remove ep.ab_displace
scoreboard objectives remove ep.ab_displace2
scoreboard objectives remove ep.age
scoreboard objectives remove ep.announcement
scoreboard objectives remove ep.highest_money
scoreboard objectives remove ep.income
scoreboard objectives remove ep.interest_time
scoreboard objectives remove ep.owner
scoreboard objectives remove ep.position.x
scoreboard objectives remove ep.position.y
scoreboard objectives remove ep.position.z
scoreboard objectives remove ep.pre_tp
scoreboard objectives remove ep.stored_money
scoreboard objectives remove ep.tax_time
scoreboard objectives remove market
scoreboard objectives remove settings
scoreboard objectives remove ep.autopay
scoreboard objectives remove ep.book_time
scoreboard objectives remove ep.bounty
scoreboard objectives remove ep.bounty_time
scoreboard objectives remove ep.death
scoreboard objectives remove ep.debt.cscore
scoreboard objectives remove ep.debt.min_pay
scoreboard objectives remove ep.last_reward
scoreboard objectives remove ep.login
scoreboard objectives remove ep.per_change
scoreboard objectives remove ep.player_kill
scoreboard objectives remove ep.reward_time
scoreboard objectives remove ep.uid0
scoreboard objectives remove ep.uid1
scoreboard objectives remove ep.uid2
scoreboard objectives remove ep.uid3
scoreboard objectives remove status

execute as @e[tag=ep.trait.shop] at @s run function directory:shop/remove
execute as @e[tag=ep.trait.ui] at @s run function directory:ui/method/remove
execute as @e[tag=ep.trait.ui_child] at @s run function directory:ui/method/remove_child
execute as @e[tag=ep.trait.terminal] at @s run function directory:terminal/method/remove
execute as @e[tag=ep.trait.terminal.child] at @s run function directory:terminal/method/remove_child
execute as @e[tag=ep.trait.heap] at @s run function directory:heap/method/remove
execute as @e[tag=ep.trait.floater] at @s run function directory:floater/remove
kill @e[tag=ep.trait.broken_market_shop]

forceload remove 29999999 29999999

bossbar remove ep:auction

data merge storage ep:auction {}
data merge storage ep:memory {}

tag @a remove ep.player.init

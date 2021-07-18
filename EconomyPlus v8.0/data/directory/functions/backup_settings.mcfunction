## The setup settings, created with the generator

# Bounty
scoreboard players set #ep.bounty.enabled ep.variable 1
scoreboard players set #ep.bounty.travel ep.variable 0
scoreboard players set #ep.bounty.payoff ep.variable 1
scoreboard players set #ep.bounty.blacklist ep.variable 1
execute unless score #ep.bounty_percent ep.variable = #ep.bounty_percent ep.variable run scoreboard players set #ep.bounty_percent ep.variable 100
execute unless score #ep.bounty.interval ep.variable = #ep.bounty.interval ep.variable run scoreboard players set #ep.bounty.interval ep.variable 1200
execute unless score #ep.bounty.return.percent ep.variable = #ep.bounty.return.percent ep.variable run scoreboard players set #ep.bounty.return.percent ep.variable 25
scoreboard players set #ep.bounty_decrease ep.variable 10

# Bank
scoreboard players set #ep.interest.enabled ep.config 1
scoreboard players set #ep.loan.enabled ep.config 1

scoreboard players set #ep.loan.equity ep.config 15

# Daily Reward
scoreboard players set #ep.reward.enabled ep.config 1
scoreboard players set #ep.reward_value ep.variable 50
scoreboard players set #ep.reward.interval ep.variable 1728000

scoreboard players set #ep.market.fee ep.variable 10
# Time interval for interest
execute unless score #ep.bank.interest.interval ep.variable matches 100.. run scoreboard players set #ep.bank.interest.interval ep.variable 36000


## This sections sets up default scoreboard values (usually when world is first ran)

# Bank values
execute unless score #ep.vault ep.variable = #ep.vault ep.variable run scoreboard players set #ep.vault ep.variable 1000
execute unless score #ep.vault_minimum ep.variable = #ep.vault_minimum ep.variable run scoreboard players set #ep.vault_minimum ep.variable 0
execute unless score #ep.prevent_seller_if_empty ep.variable = #ep.prevent_seller_if_empty ep.variable run scoreboard players set #ep.prevent_seller_if_empty ep.variable 1

# Bank Interest Values
execute unless score #ep.vault_pay_interest ep.variable = #ep.vault_pay_interest ep.variable run scoreboard players set #ep.vault_pay_interest ep.variable 10000
execute unless score #ep.enum.bank.interest_rate ep.variable = #ep.enum.bank.interest_rate ep.variable run scoreboard players set #ep.enum.bank.interest_rate ep.variable 1
execute unless score #ep.enum.bank.interest_min ep.variable = #ep.enum.bank.interest_min ep.variable run scoreboard players set #ep.enum.bank.interest_min ep.variable 1000

# Bank Loan Values
execute unless score #ep.max_loan_percent ep.variable = #ep.max_loan_percent ep.variable run scoreboard players set #ep.max_loan_percent ep.variable 10


# define entity #ep.loan.max_loan
execute unless score #ep.loan.max_loan ep.variable = #ep.loan.max_loan ep.variable run scoreboard players set #ep.loan.max_loan ep.variable 1000

execute unless score #ep.loan.interest_rate ep.variable = #ep.loan.interest_rate ep.variable run scoreboard players set #ep.loan.interest_rate ep.variable 20


# Interval for debt increasing (in ticks)
execute unless score #ep.debt.interval ep.variable = #ep.debt.interval ep.variable run scoreboard players set #ep.debt.interval ep.variable 36000
# Debt rate
scoreboard players set #ep.debt.rate.black ep.variable 0
scoreboard players set #ep.debt.rate.red ep.variable 7
scoreboard players set #ep.debt.rate.orange ep.variable 4
scoreboard players set #ep.debt.rate.yellow ep.variable 2
scoreboard players set #ep.debt.rate.green ep.variable 1

scoreboard players set #ep.default.credit_score ep.config 50
scoreboard players set #ep.credit_score.black ep.variable 0
scoreboard players set #ep.credit_score.red ep.variable 1
scoreboard players set #ep.credit_score.orange ep.variable 26
scoreboard players set #ep.credit_score.yellow ep.variable 51
scoreboard players set #ep.credit_score.green ep.variable 76

scoreboard players set #ep.credit_score.pay ep.variable 1
scoreboard players set #ep.credit_score.miss ep.variable 5


# Bank Taxes
execute unless score #ep.tax.min_amount ep.variable = #ep.tax.min_amount ep.variable run scoreboard players set #ep.tax.min_amount ep.variable 1000
execute unless score #ep.tax.rate ep.variable = #ep.tax.rate ep.variable run scoreboard players set #ep.tax.rate ep.variable 15
execute unless score #ep.tax.interval ep.variable = #ep.tax.interval ep.variable run scoreboard players set #ep.tax.interval ep.variable 36000

# Disabled Bank Statuses
execute unless score #ep.tax.enabled ep.config = #ep.tax.enabled ep.config run scoreboard players set #ep.tax.enabled ep.config 0
#execute unless score #ep.loan.enabled ep.config = #ep.loan.enabled ep.config run scoreboard players set #ep.loan.enabled ep.config 0
execute unless score #ep.interest.enabled ep.config = #ep.interest.enabled ep.config run scoreboard players set #ep.interest.enabled ep.config 0

# Default bounty percent:



# Money Drops
execute unless score #ep.money_drop.mobs ep.config = #ep.money_drop.mobs ep.config run scoreboard players set #ep.money_drop.mobs ep.config 1
execute unless score #ep.money_drop.wood ep.config = #ep.money_drop.wood ep.config run scoreboard players set #ep.money_drop.wood ep.config 1
execute unless score #ep.money_drop.ore ep.config = #ep.money_drop.ore ep.config run scoreboard players set #ep.money_drop.ore ep.config 1
execute unless score #ep.money_drop.farming ep.config = #ep.money_drop.farming ep.config run scoreboard players set #ep.money_drop.farming ep.config 1
execute unless score #ep.money_drop.fishing ep.config = #ep.money_drop.fishing ep.config run scoreboard players set #ep.money_drop.fishing ep.config 1

# Player Shops (disabled by default)
execute unless score #ep.player_shop.enabled ep.config = #ep.player_shop.enabled ep.config run scoreboard players set #ep.player_shop.enabled ep.config 0
#c how much each market sign costs:
execute unless score #ep.market.sign_cost ep.variable = #ep.market.sign_cost ep.variable run scoreboard players set #ep.market.sign_cost ep.variable 50



# The amount players have spent/earned on shop signs
execute unless score #ep.admin_earned ep.variable = #ep.admin_earned ep.variable run scoreboard players set #ep.admin_earned ep.variable 0
execute unless score #ep.admin_spent ep.variable = #ep.admin_spent ep.variable run scoreboard players set #ep.admin_spent ep.variable 0

#c sets the time it takes for a teleport to work
scoreboard players set #ep.terminal.pre_teleport_cooldown ep.variable 100


# Shop Cooldown (time in seconds) * 20 = #
execute unless score #ep.terminal.teleport_cooldown ep.variable = #ep.terminal.teleport_cooldown ep.variable run scoreboard players set #ep.terminal.teleport_cooldown ep.variable 100
execute unless score #ep.terminal.teleport_cost ep.variable = #ep.terminal.teleport_cost ep.variable run scoreboard players set #ep.terminal.teleport_cost ep.variable 50
scoreboard players set #ep.terminal.teleport_enabled ep.variable 1
# Spawn Cooldown (time in seconds) * 20 = #
execute unless score #ep.terminal.teleport_cooldown1 ep.variable = #ep.terminal.teleport_cooldown1 ep.variable run scoreboard players set #ep.terminal.teleport_cooldown1 ep.variable 72000
execute unless score #ep.terminal.teleport_cost1 ep.variable = #ep.terminal.teleport_cost1 ep.variable run scoreboard players set #ep.terminal.teleport_cost1 ep.variable 50
scoreboard players set #ep.terminal.teleport_enabled1 ep.variable 1
# Home Cooldown (time in seconds) * 20 = #
execute unless score #ep.terminal.teleport_cooldown2 ep.variable = #ep.terminal.teleport_cooldown2 ep.variable run scoreboard players set #ep.terminal.teleport_cooldown2 ep.variable 72000
execute unless score #ep.terminal.teleport_cost2 ep.variable = #ep.terminal.teleport_cost2 ep.variable run scoreboard players set #ep.terminal.teleport_cost2 ep.variable 50
scoreboard players set #ep.terminal.teleport_enabled2 ep.variable 1
# Auction Cooldown (time in seconds) * 20 = #
execute unless score #ep.terminal.teleport_cooldown3 ep.variable = #ep.terminal.teleport_cooldown3 ep.variable run scoreboard players set #ep.terminal.teleport_cooldown3 ep.variable 72000
execute unless score #ep.terminal.teleport_cost3 ep.variable = #ep.terminal.teleport_cost3 ep.variable run scoreboard players set #ep.terminal.teleport_cost3 ep.variable 50
scoreboard players set #ep.terminal.teleport_enabled3 ep.variable 1
# Bank Cooldown (time in seconds) * 20 = #
execute unless score #ep.terminal.teleport_cooldown4 ep.variable = #ep.terminal.teleport_cooldown4 ep.variable run scoreboard players set #ep.terminal.teleport_cooldown4 ep.variable 72000
execute unless score #ep.terminal.teleport_cost4 ep.variable = #ep.terminal.teleport_cost4 ep.variable run scoreboard players set #ep.terminal.teleport_cost4 ep.variable 50
scoreboard players set #ep.terminal.teleport_enabled4 ep.variable 1

# define entity #ep.auction.time
# define entity #ep.auction.auction_time
scoreboard players set #ep.auction.enabled ep.variable 1
scoreboard players set #ep.auction.fee ep.variable 50
scoreboard players set #ep.auction.auction_time ep.variable 1200

# define entity #ep.currency.displacement_time
scoreboard players set #ep.currency.displacement_time ep.variable 40
# define entity #ep.start_money
scoreboard players set #ep.start_money ep.variable 0
# define entity #ep.start_bank
scoreboard players set #ep.start_bank ep.variable 0


# define entity #ep.dead.drop
# define entity #ep.dead.void
execute unless score #ep.dead.drop ep.variable = #ep.dead.drop ep.variable run scoreboard players set #ep.dead.drop ep.variable 10
execute unless score #ep.dead.void ep.variable = #ep.dead.void ep.variable run scoreboard players set #ep.dead.void ep.variable 5
scoreboard players set #ep.death.enabled ep.config 1

# Displays
scoreboard players set #ep.actionbar_statistic ep.config 1
scoreboard players set #ep.below_name_statistic ep.config 0
scoreboard players set #ep.list_statistic ep.config 0
scoreboard players set #ep.sidebar_statistic ep.config 0

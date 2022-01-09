scoreboard players set #ep.config.SetWorldSpawn ep.config 1
scoreboard players set #ep.config.SpawnProtectionX ep.config 50
scoreboard players set #ep.config.SpawnProtectionY ep.config 255
scoreboard players set #ep.config.SpawnProtectionZ ep.config 50
scoreboard players set #ep.interest.enabled ep.config 1
scoreboard players set #ep.vault_pay_interest ep.variable 10000
scoreboard players set #ep.enum.bank.interest_min ep.variable 1000
scoreboard players set #ep.enum.bank.interest_rate ep.variable 1
scoreboard players set #ep.bank.interest.interval ep.variable 72000
scoreboard players set #ep.realistic_enabled ep.config 1
scoreboard players set #ep.prevent_seller_if_empty ep.variable 1
scoreboard players set #ep.vault_minimum ep.variable 500
scoreboard players set #ep.loan.enabled ep.config 1
scoreboard players set #ep.loan.max_loan ep.variable 500000
scoreboard players set #ep.loan.equity ep.config 15
scoreboard players set #ep.max_loan_percent ep.variable 100
scoreboard players set #ep.loan.interest_rate ep.variable 25
scoreboard players set #ep.loan.enabled ep.config 1
scoreboard players set #ep.debt.interval ep.variable 72000
scoreboard players set #ep.debt.rate.black ep.variable 0
scoreboard players set #ep.debt.rate.red ep.variable 8
scoreboard players set #ep.debt.rate.orange ep.variable 4
scoreboard players set #ep.debt.rate.yellow ep.variable 2
scoreboard players set #ep.debt.rate.green ep.variable 1
scoreboard players set #ep.default.credit_score ep.config 50
scoreboard players set #ep.config.LowestPaidCreditScore ep.config 10
scoreboard players set #ep.credit_score.black ep.variable 0
scoreboard players set #ep.credit_score.red ep.variable 1
scoreboard players set #ep.credit_score.orange ep.variable 26
scoreboard players set #ep.credit_score.yellow ep.variable 51
scoreboard players set #ep.credit_score.green ep.variable 76
scoreboard players set #ep.credit_score.pay ep.variable 1
scoreboard players set #ep.credit_score.miss ep.variable 5
scoreboard players set #ep.config.CreditMinPercentPay ep.config 10
scoreboard players set #ep.tax.enabled ep.config 1
scoreboard players set #ep.tax.min_amount ep.variable 1000
scoreboard players set #ep.tax.rate ep.variable 15
scoreboard players set #ep.tax.interval ep.variable 72000
scoreboard players set #ep.reward.enabled ep.config 1
scoreboard players set #ep.reward_value ep.variable 25
scoreboard players set #ep.reward.interval ep.variable 72000
scoreboard players set #ep.player_shop.enabled ep.config 1
scoreboard players set #ep.market.sign_cost ep.variable 25
scoreboard players set #ep.market.fee ep.variable 10
scoreboard players set #ep.MarketSignTimer ep.config 6000
scoreboard players set #null null 0
scoreboard players set #null null 1
scoreboard players set #ep.auction.enabled ep.variable 1
scoreboard players set #ep.auction.fee ep.variable 5
scoreboard players set #ep.auction.auction_time ep.variable 1200
scoreboard players set #ep.sidebar_statistic ep.config 0
scoreboard players set #ep.list_statistic ep.config 0
scoreboard players set #ep.actionbar_statistic ep.config 1
scoreboard players set #ep.below_name_statistic ep.config 0
scoreboard players set #ep.death.enabled ep.config 1
scoreboard players set #ep.dead.drop ep.variable 10
scoreboard players set #ep.dead.void ep.variable 5
scoreboard players set #ep.terminal.pre_teleport_cooldown ep.variable 100
scoreboard players set #ep.terminal.teleport_enabled2 ep.variable 1
scoreboard players set #ep.terminal.teleport_cost2 ep.variable 15
scoreboard players set #ep.terminal.teleport_cooldown2 ep.variable 6000
scoreboard players set #ep.terminal.teleport_enabled1 ep.variable 1
scoreboard players set #ep.terminal.teleport_cost1 ep.variable 30
scoreboard players set #ep.terminal.teleport_cooldown1 ep.variable 18000
scoreboard players set #ep.terminal.teleport_enabled4 ep.variable 1
scoreboard players set #ep.terminal.teleport_cost4 ep.variable 30
scoreboard players set #ep.terminal.teleport_cooldown4 ep.variable 18000
scoreboard players set #ep.terminal.teleport_enabled3 ep.variable 1
scoreboard players set #ep.terminal.teleport_cost3 ep.variable 30
scoreboard players set #ep.terminal.teleport_cooldown3 ep.variable 18000
scoreboard players set #ep.terminal.teleport_enabled ep.variable 1
scoreboard players set #ep.terminal.teleport_cost5 ep.variable 30
scoreboard players set #ep.terminal.teleport_cooldown5 ep.variable 6000
scoreboard players set #ep.terminal.teleport_enabled5 ep.variable 1
scoreboard players set #ep.bounty.enabled ep.variable 1
scoreboard players set #ep.bounty.travel ep.variable 0
scoreboard players set #ep.bounty.payoff ep.variable 1
scoreboard players set #ep.bounty.blacklist ep.variable 0
scoreboard players set #ep.bounty_percent ep.variable 90
scoreboard players set #ep.bounty_decrease ep.variable 50
scoreboard players set #ep.bounty.interval ep.variable 30000
scoreboard players set #ep.bounty.return.percent ep.variable 25
scoreboard players set #ep.money_drop.mobs ep.config 1
scoreboard players set #ep.money_drop.ore ep.config 1
scoreboard players set #ep.money_drop.farming ep.config 1
scoreboard players set #ep.money_drop.fishing ep.config 1
scoreboard players set #ep.money_drop.wood ep.config 1
scoreboard objectives modify ep.display_money displayname {"text":"Currency", "color":"#D4AF37"}
data merge storage ep:config {"currency_name":"Currency"}
data merge storage ep:config {"currency_icon":"$"}
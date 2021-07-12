tellraw @p [{"text":"AllowBounty: "},{"score":{"name":"#ep.bounty.enabled","objective":"ep.variable"}}]
tellraw @p [{"text":"AllowBountyTravel: "},{"score":{"name":"#ep.bounty.travel","objective":"ep.variable"}}]
tellraw @p [{"text":"AllowBountyPayoff: "},{"score":{"name":"#ep.bounty.payoff","objective":"ep.variable"}}]
tellraw @p [{"text":"AllowBountyBlacklist: "},{"score":{"name":"#ep.bounty.blacklist","objective":"ep.variable"}}]
tellraw @p [{"text":"BountyKillReceive: "},{"score":{"name":"#ep.bounty_percent","objective":"ep.variable"}}]
tellraw @p [{"text":"BountyDecreaseAmount: "},{"score":{"name":"#ep.bounty_decrease","objective":"ep.variable"}}]
tellraw @p [{"text":"BountyDecreaseTime: "},{"score":{"name":"#ep.bounty.interval","objective":"ep.variable"}}]
tellraw @p [{"text":"BountyPayoffInterest: "},{"score":{"name":"#ep.bounty.return.percent","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowBankInterest: "},{"score":{"name":"#ep.interest.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"VaultBalanceBeforeInterest: "},{"score":{"name":"#ep.vault_pay_interest","objective":"ep.variable"}}]
tellraw @p [{"text":"BankBalanceBeforeInterest: "},{"score":{"name":"#ep.enum.bank.interest_min","objective":"ep.variable"}}]
tellraw @p [{"text":"BankInterestRate: "},{"score":{"name":"#ep.enum.bank.interest_rate","objective":"ep.variable"}}]
tellraw @p [{"text":"BankInterestInterval: "},{"score":{"name":"#ep.bank.interest.interval","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowVault: "},{"score":{"name":"#ep.realistic_enabled","objective":"ep.config"}}]
tellraw @p [{"text":"PreventSelling: "},{"score":{"name":"#ep.prevent_seller_if_empty","objective":"ep.variable"}}]
tellraw @p [{"text":"VaultMinValue: "},{"score":{"name":"#ep.vault_minimum","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowLoan: "},{"score":{"name":"#ep.loan.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"MaxLoan: "},{"score":{"name":"#ep.loan.max_loan","objective":"ep.variable"}}]
tellraw @p [{"text":"PlayerEquityBeforeLoan: "},{"score":{"name":"#ep.loan.equity","objective":"ep.config"}}]
tellraw @p [{"text":"MaxLoanOfAmountInVault: "},{"score":{"name":"#ep.max_loan_percent","objective":"ep.variable"}}]
tellraw @p [{"text":"LoanInterest: "},{"score":{"name":"#ep.loan.interest_rate","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowDebt: "},{"score":{"name":"#ep.loan.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"DebtInterval: "},{"score":{"name":"#ep.debt.interval","objective":"ep.variable"}}]

tellraw @p [{"text":"DebtRateBlack: "},{"score":{"name":"#ep.debt.rate.black","objective":"ep.variable"}}]
tellraw @p [{"text":"DebtRateRed: "},{"score":{"name":"#ep.debt.rate.red","objective":"ep.variable"}}]
tellraw @p [{"text":"DebtRateOrange: "},{"score":{"name":"#ep.debt.rate.orange","objective":"ep.variable"}}]
tellraw @p [{"text":"DebtRateYellow: "},{"score":{"name":"#ep.debt.rate.yellow","objective":"ep.variable"}}]
tellraw @p [{"text":"DebtRateGreen: "},{"score":{"name":"#ep.debt.rate.green","objective":"ep.variable"}}]

tellraw @p [{"text":"MinCreditScoreBlack: "},{"score":{"name":"#ep.credit_score.black","objective":"ep.variable"}}]
tellraw @p [{"text":"MinCreditScoreRed: "},{"score":{"name":"#ep.credit_score.red","objective":"ep.variable"}}]
tellraw @p [{"text":"MinCreditScoreOrange: "},{"score":{"name":"#ep.credit_score.orange","objective":"ep.variable"}}]
tellraw @p [{"text":"MinCreditScoreYellow: "},{"score":{"name":"#ep.credit_score.yellow","objective":"ep.variable"}}]
tellraw @p [{"text":"MinCreditScoreGreen: "},{"score":{"name":"#ep.credit_score.green","objective":"ep.variable"}}]

tellraw @p [{"text":"CreditScoreGain: "},{"score":{"name":"#ep.credit_score.pay","objective":"ep.variable"}}]
tellraw @p [{"text":"CreditScoreLoss: "},{"score":{"name":"#ep.credit_score.miss","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowTax: "},{"score":{"name":"#ep.tax.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"MoneyBeforeTax: "},{"score":{"name":"#ep.tax.min_amount","objective":"ep.variable"}}]
tellraw @p [{"text":"TaxRate: "},{"score":{"name":"#ep.tax.rate","objective":"ep.variable"}}]
tellraw @p [{"text":"TaxInterval: "},{"score":{"name":"#ep.tax.interval","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowPlaytimeReward: "},{"score":{"name":"#ep.reward.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"PlaytimeRewardAmount: "},{"score":{"name":"#ep.reward_value","objective":"ep.variable"}}]
tellraw @p [{"text":"PlaytimeRewardInterval: "},{"score":{"name":"#ep.reward.interval","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowPlayerShop: "},{"score":{"name":"#ep.player_shop.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"PlayerShopCost: "},{"score":{"name":"#ep.market.sign_cost","objective":"ep.variable"}}]
tellraw @p [{"text":"PlayerShopCostFee: "},{"score":{"name":"#ep.market.fee","objective":"ep.variable"}}]

tellraw @p [{"text":"TravelTime: "},{"score":{"name":"#ep.terminal.pre_teleport_cooldown","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowHomeTravel: "},{"score":{"name":"#ep.terminal.teleport_enabled2","objective":"ep.variable"}}]
tellraw @p [{"text":"HomeTravelCost: "},{"score":{"name":"#ep.terminal.teleport_cost2","objective":"ep.variable"}}]
tellraw @p [{"text":"HomeTravelCooldown: "},{"score":{"name":"#ep.terminal.teleport_cooldown2","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowSpawnTravel: "},{"score":{"name":"#ep.terminal.teleport_enabled1","objective":"ep.variable"}}]
tellraw @p [{"text":"SpawnTravelCost: "},{"score":{"name":"#ep.terminal.teleport_cost1","objective":"ep.variable"}}]
tellraw @p [{"text":"SpawnTravelCooldown: "},{"score":{"name":"#ep.terminal.teleport_cooldown1","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowAuctionTravel: "},{"score":{"name":"#ep.terminal.teleport_enabled3","objective":"ep.variable"}}]
tellraw @p [{"text":"AuctionTravelCost: "},{"score":{"name":"#ep.terminal.teleport_cost3","objective":"ep.variable"}}]
tellraw @p [{"text":"AuctionTravelCooldown: "},{"score":{"name":"#ep.terminal.teleport_cooldown3","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowBankTravel: "},{"score":{"name":"#ep.terminal.teleport_enabled4","objective":"ep.variable"}}]
tellraw @p [{"text":"BankTravelCost: "},{"score":{"name":"#ep.terminal.teleport_cost4","objective":"ep.variable"}}]
tellraw @p [{"text":"BankTravelCooldown: "},{"score":{"name":"#ep.terminal.teleport_cooldown4","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowShopTravel: "},{"score":{"name":"#ep.terminal.teleport_enabled","objective":"ep.variable"}}]
tellraw @p [{"text":"ShopTravelCost: "},{"score":{"name":"#ep.terminal.teleport_cost","objective":"ep.variable"}}]
tellraw @p [{"text":"ShopTravelCooldown: "},{"score":{"name":"#ep.terminal.teleport_cooldown","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowAuction: "},{"score":{"name":"#ep.auction.enabled","objective":"ep.variable"}}]
tellraw @p [{"text":"AuctionSoldFee: "},{"score":{"name":"#ep.auction.fee","objective":"ep.variable"}}]
tellraw @p [{"text":"AuctionBidTimer: "},{"score":{"name":"#ep.auction.auction_time","objective":"ep.variable"}}]

tellraw @p [{"text":"AllowMoneyDropMobs: "},{"score":{"name":"#ep.money_drop.mobs","objective":"ep.config"}}]
tellraw @p [{"text":"AllowMoneyDropOre: "},{"score":{"name":"#ep.money_drop.ore","objective":"ep.config"}}]
tellraw @p [{"text":"AllowMoneyDropFarming: "},{"score":{"name":"#ep.money_drop.farming","objective":"ep.config"}}]
tellraw @p [{"text":"AllowMoneyDropFishing: "},{"score":{"name":"#ep.money_drop.fishing","objective":"ep.config"}}]
tellraw @p [{"text":"AllowMoneyDropWood: "},{"score":{"name":"#ep.money_drop.wood","objective":"ep.config"}}]

tellraw @p [{"text":"AllowSideBar: "},{"score":{"name":"#ep.sidebar_statistic","objective":"ep.config"}}]
tellraw @p [{"text":"AllowList: "},{"score":{"name":"#ep.list_statistic","objective":"ep.config"}}]
tellraw @p [{"text":"AllowActionBar: "},{"score":{"name":"#ep.actionbar_statistic","objective":"ep.config"}}]
tellraw @p [{"text":"AllowBelowName: "},{"score":{"name":"#ep.below_name_statistic","objective":"ep.config"}}]

tellraw @p [{"text":"AllowDeathDrop: "},{"score":{"name":"#ep.death.enabled","objective":"ep.config"}}]
tellraw @p [{"text":"DeathDropRecoverable: "},{"score":{"name":"#ep.dead.drop","objective":"ep.variable"}}]
tellraw @p [{"text":"DeathDropUnrecoverable: "},{"score":{"name":"#ep.dead.void","objective":"ep.variable"}}]

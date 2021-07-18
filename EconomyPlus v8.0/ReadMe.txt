Thank you for testing out my EconomyPlus datapack, this is the first one i've made so excuse me if it seem a little unorthodox, 
every comment means the world to me, so if you have anything to say, anything at all, wether it be good or bad, let me know! 

If anything is unclear, or if some of the features is not working or displaying properly, try going into config.properties and read up on what's active and what's not!

Functions                                                                   Description
/function admin:settings                                                    Opens Admin Settings
/function admin:debug                                                       Opens Debug Mode

/scoreboard players add/set/remove [Player] ep.money [Amount]               Lets you add/set/remove Money to/from players
/scoreboard players add/set/remove [Player] ep.bank [Amount]                Lets you add/set/remove Bank to/from players
/scoreboard players add/set/remove #ep.vault ep.variable [Amount]           Lets you add/set/remove Balance to/from vault

Remove floating texts:
/kill @e[type=!player,distance=..15]                                        Kills everything except the player within 15 block range
/kill @e[type=minecraft:armor_stand,distance=..15]                          Kills every armor stand within 15 block range
/kill @e[type=minecraft:villager,distance=..15]                             Kills every villager within 15 block range
/kill @e[type=minecraft:area_effect_cloud,distance=..15]                    Kills every cloud effects within 15 block range


Triggers                    Description
/trigger commands           Gives you a list of all commands.
/trigger pay                Pays the closest player within 10 blocks.
/trigger balance            Displays your Balances. (Wallet, Bank & Debt)
/trigger status             Displays your Statuses. (Interest, Debt, Bounty & Play Time Reward)
/trigger auction            Auctions your chosen item with a starting bid. Must be close to Auction.
/trigger bid set (amount)	Bids a auctioned item. Must be above current price and close to Auction.
/trigger sell               Sells your item to the closest player within 10 blocks.
/trigger buy                Buys a item from the closest player within 10 blocks.
/trigger bank               Opens of your Bank Account menu. (Withdraw, Deposit, Loan & Credit)
/trigger travel             Let's you Travel. (Home, Shop, Bank, Auction and Spawn)
/trigger market             Creates own Player Shops. Place any sign and look at it.
/trigger settings           Opens your personal settings.

Note: You can't place down Shop Signs within a Spawn Protected area, players will not be able to interact with the Shop Signs, this can not be fixed unless you mod the game. (Only OPs can interact with signs when the sign is placed within the actual /setworldspawn or spawn area)

Credit / Author
• Fendoran	➣ Coder & Creator
• LegoBro   ➣ Coder




SETTINGS GUIDE

Bank
AllowBankInterest: true                                 Enables/Disables Bank Interests
VaultBalanceBeforeInterest: $10000                      Changes the amount that the vault need to have before players will get any Interest
BankBalanceBeforeInterest: $1000                        Changes the amount that the player need to have in their bank before they can get any Interest
BankInterestRate: 1%                                    Changes the Interest percentage amount that is handed out to the player
BankInterestInterval: 1h                                Changes the Interest interval, for when it is handed out to the player

Vault
AllowVault: true
PreventSelling: true                                    Enables/Disables the possibility for Admin Shops to sell/buy from players, if set to false, then the Admin Shops will no longer need the vault to buy items from players (It essentially has infinite money)
VaultMinValue: $500                                     Changes the minimum value the Vault can have at any time

Loan
AllowLoan: true                                         Enables/Disables Loans
MaxLoan: $500000                                        Changes the Max amount of Loan a player can loan at any time
PlayerEquityBeforeLoan: 15%                             Changes the Equity amount the player needs to have for the Loan (If you loan $100, and the Equity percent is 15%, then you need to have 15$ to be able to Loan that amount)
MaxLoanOfAmountInVault: 100%                            Changes the Max Loan you can take depending on the amount the vault has, if 100% you can loan w/e the Vault has, provided you have good enough CreditScore and have the Equity needed for the Loan
LoanInterest: 25%                                       Changes the Interest that will immedietaly be given when taking a Loan

Debt
AllowDebt: true                                         Enables/Disables Debt
DebtInterval: 1h                                        Changes the time between debts

DebtRateBlack: 0%                                       Changes the debt percentage increase for black status CreditScore
DebtRateRed: 8%                                         Changes the debt percentage increase for red status CreditScore
DebtRateOrange: 4%                                      Changes the debt percentage increase for orange status CreditScore
DebtRateYellow: 2%                                      Changes the debt percentage increase for yellow status CreditScore
DebtRateGreen: 1%                                       Changes the debt percentage increase for green status CreditScore

StartCreditScore: 50                                    Changes the CreditScore that players start with when first joining your server

MinCreditScoreBlack: 0                                  Changes the minimum value before you're not in the black zone for your CreditScore
MinCreditScoreRed: 1                                    Changes the minimum value before you're not in the red zone for your CreditScore
MinCreditScoreOrange: 26                                Changes the minimum value before you're not in the orange zone for your CreditScore
MinCreditScoreYellow: 51                                Changes the minimum value before you're not in the yellow zone for your CreditScore
MinCreditScoreGreen: 76                                 Changes the minimum value before you're not in the green zone for your CreditScore

CreditScoreGain: 1                                      Changes the amount of CreditScore that is given when you for example succeed to pay a payment
CreditScoreLoss: 5                                      Changes the amount of CreditScore that is lost when you for example fail to pay a payment

Tax
AllowTax: true                                          Enables/Disables Taxation
MoneyBeforeTax: $1500                                   Changes the amount of money needed before the taxation starts (You must reach this amount within the set time for TaxInterval for the taxation to start)
TaxRate: 15%                                            Changes the Tax percentage taken from the player
TaxInterval: 1h                                         Changes the time between taxation

Playtime Reward
AllowPlaytimeReward: true                               Enables/Disables PlayTimeReward
PlaytimeRewardAmount: $25                               Changes the amount given by PlayTimeReward
PlaytimeRewardInterval: 1h                              Changes the time between PlayTimeReward handouts

Player Shops
AllowPlayerShops: true                                  Enables/Disables Market Shops (Player Shop)
PlayerShopCost: $100                                    Changes the cost to make a Market Shop
PlayerShopCostFee: 10%                                  Changes the Market fee that the Vault keeps after a Market is destroyed, this is taken from the value you paid to make the Market Shop
PlayerShopProtection: true                              (not implemented)

Auction
AllowAuction: true                                      Enables/Disables Auction
AuctionSoldFee: 5%                                      Changes the Auction fee that the Vault is entitled to when a Auction has completed, if the item was sold
AuctionBidTimer: 60s                                    Changes the bid timer when a auction is created
AuctionOutBidTimer: 10s                                 (not implemented)

Money Display
AllowSideBar: false                                     Enables/Disables the money display on the side bar panel
AllowList: false                                        Enables/Disables the money display when hitting tab
AllowActionBar: true                                    Enables/Disables the money display on the action bar
AllowBelowName: false                                   Enables/Disables the money display below the players name

Death Drop
AllowDeathDrop: true                                    Enables/Disables the money lost on death feature
DeathDropRecoverable: 10%                               Changes the amount of money that is recoverable uppon death
DeathDropUnrecoverable: 5%                              Changes the amount of money that is unrecoverable uppon death

Money
MoneyName: Money                                        Changes the money name
MoneyIcon: $                                            Changes the money icon


Plugin Settings for EconomyPlus ⌵

Travel
TravelTime: 5s                                          Changes the time it takes to travel

AllowHomeTravel: true                                   Enables/Disables HomeTravel
HomeTravelCost: $50                                     Changes the cost for HomeTravel
HomeTravelCooldown: 15m                                 Changes the time that it takes before you can use HomeTravel again

AllowSpawnTravel: true                                  Enables/Disables SpawnTravel
SpawnTravelCost: $100                                   Changes the cost for SpawnTravel
SpawnTravelCooldown: 30m                                Changes the time that it takes before you can use SpawnTravel again

AllowBankTravel: true                                   Enables/Disables BankTravel
BankTravelCost: $100                                    Changes the cost for BankTravel
BankTravelCooldown: 30m                                 Changes the time that it takes before you can use BankTravel again

AllowAuctionTravel: true                                Enables/Disables AuctionTravel
AuctionTravelCost: $100                                 Changes the cost for AuctionTravel
AuctionTravelCooldown: 30m                              Changes the time that it takes before you can use AuctionTravel again

AllowShopTravel: true                                   Enables/Disables ShopTravel
ShopTravelCost: $100                                    Changes the cost for ShopTravel
ShopTravelCooldown: 30m                                 Changes the time that it takes before you can use ShopTravel again

Bounty
AllowBounty: true                                       Enables/Disables Bounties
AllowBountyTravel: false                                Enables/Disables Bounties being able to use Travel
AllowBountyPayoff: true                                 Enables/Disables Bounties being able to pay off their bounty (Getting rid of it)
AllowBountyBlacklist: false                             Enables/Disables bounties being blacklisted when getting a bounty on their head
BountyKillReceive: 90%                                  Changes the amount of money that bounties receive when killing another player (This is the amount that the player would've dropped when dying)
BountyDecreaseAmount: $50                               Changes the amount of money that the you will lose when having a bounty on your head
BountyDecreaseTime: 25m                                 Changes the time that it takes before you will gradually decrease in bounty value (when it reaches 0, you no longer have a bounty on your head)
BountyPayoffInterest: 25%                               Changes the amount that it will cost for you to pay off your bount (this is a interest, say you have $100 on your head and you want to pay it off, if set to 25%, then it will cost you $125 for you to pay it off)

Money Drops
AllowMoneyDropMobs: true                                Enables/Disables Money Dropping when killing mobs
AllowMoneyDropOre: true                                 Enables/Disables Money Dropping when mining  ores
AllowMoneyDropFarming: true                             Enables/Disables Money Dropping when farming/harvesting planted crops
AllowMoneyDropFishing: true                             Enables/Disables Money Dropping when fishing (catching fish, garbage or treasure)
AllowMoneyDropWood: true                                Enables/Disables Money Dropping when chopping wood
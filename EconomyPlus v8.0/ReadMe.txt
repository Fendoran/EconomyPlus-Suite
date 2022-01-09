If anything is unclear, or if some of the features is not working or displaying properly, try going into settings.html and read up on what's active and what's not!

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


Triggers                                                                    Description
/trigger commands                                                           Gives you a list of all commands.
/trigger pay                                                                Pays the closest player within 10 blocks.
/trigger balance                                                            Displays your Balances. (Wallet, Bank & Debt)
/trigger status                                                             Displays your Statuses. (Interest, Debt, Bounty & Play Time Reward)
/trigger auction                                                            Auctions your chosen item with a starting bid. Must be close to Auction.
/trigger bid set (amount)	                                                Bids a auctioned item. Must be above current price and close to Auction.
/trigger sell                                                               Sells your item to the closest player within 10 blocks.
/trigger buy                                                                Buys a item from the closest player within 10 blocks.
/trigger bank                                                               Opens of your Bank Account menu. (Withdraw, Deposit, Loan & Credit)
/trigger travel                                                             Let's you Travel. (Home, Shop, Bank, Auction and Spawn)
/trigger market                                                             Creates own Player Shops. Place any sign and look at it.
/trigger settings                                                           Opens your personal settings.

Note: You can't place down Shop Signs within a Spawn Protected area, players will not be able to interact with the Shop Signs, 
this can not be fixed unless you mod the game. (Only OPs can interact with signs when the sign is placed within the actual /setworldspawn or spawn area), 
however, you can disable spawn protection by setting it to 0, and use our spawn protection system instead!

Credit / Author
• Fendoran	➣ Coder & Creator
• LegoBro   ➣ Coder
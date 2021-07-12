## The functions that load/setup the datapack

# New scoreboard objectives

# Important objectives

scoreboard objectives add ep.variable dummy
scoreboard objectives add ep.config dummy
scoreboard objectives add ep.state dummy

# Session for each player, this changes with each login,
scoreboard objectives add ep.session dummy {"text": "EP session"}
# Tracks log outs so that a new session ID can be generated to absolutely minimize the amount of player session collisions
scoreboard objectives add ep.login minecraft.custom:minecraft.leave_game

# UID for each player
scoreboard objectives add ep.uid0 dummy {"text": "EP UID-0"}
scoreboard objectives add ep.uid1 dummy {"text": "EP UID-1"}
scoreboard objectives add ep.uid2 dummy {"text": "EP UID-2"}
scoreboard objectives add ep.uid3 dummy {"text": "EP UID-3"}

scoreboard objectives add ep.interact minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add ep.time dummy {"text": "Relativistic Time Syncing"}
scoreboard objectives add ep.reward_time minecraft.custom:minecraft.play_time {"text": "Reward Time"}
scoreboard objectives add ep.reset_time dummy
scoreboard objectives add ep.end_time dummy
scoreboard objectives add ep.player_kill minecraft.custom:minecraft.player_kills
scoreboard objectives add ep.bounty dummy
scoreboard objectives add ep.bounty_time minecraft.custom:minecraft.play_time {"text": "Bounty Time"}
scoreboard objectives add ep.book_time minecraft.custom:minecraft.play_time {"text": "Book Time"}
scoreboard objectives add ep.death deathCount

# Money and/or bank objectives
scoreboard objectives add ep.display_money dummy {"text":"Money", "color":"#D4AF37"}
scoreboard objectives add ep.money dummy {"text":"Money"}
scoreboard objectives add ep.bank dummy {"text": "Bank"}
scoreboard objectives add ep.highest_money dummy {"text": "Highest Money You Ever Had"}

# Debt objectives
scoreboard objectives add ep.debt dummy {"text": "Debt"}
scoreboard objectives add ep.debt_state dummy
scoreboard objectives add ep.debt_start dummy {"text": "Debt Start Time"}
scoreboard objectives add ep.debt_time minecraft.custom:minecraft.play_time {"text": "Debt Time"}
scoreboard objectives add ep.debt.min_pay dummy
scoreboard objectives add ep.debt.cscore dummy
scoreboard objectives add ep.autopay dummy

# Used in shop setup/use
scoreboard objectives add ep.use dummy
scoreboard objectives add ep.max_use dummy
scoreboard objectives add ep.per_change dummy
scoreboard objectives add ep.animation dummy



# If the player has actionbar or announcements enabled/disabled
scoreboard objectives add ep.actionbar dummy
scoreboard objectives add ep.announcement dummy

# Age of entity
scoreboard objectives add ep.age dummy

# Trigger commands

scoreboard objectives add auction trigger {"text": "Auction"}
scoreboard objectives add bid trigger {"text": "Bid"}
scoreboard objectives add pay trigger {"text": "Pay"}
scoreboard objectives add balance trigger {"text": "Balance"}
scoreboard objectives add status trigger {"text": "Status"}
scoreboard objectives add sell trigger {"text": "Sell"}
scoreboard objectives add buy trigger {"text": "Buy"}
scoreboard objectives add commands trigger {"text": "Commands"}
scoreboard objectives add market trigger {"text": "Market"}
scoreboard objectives add settings trigger {"text": "Settings"}
scoreboard objectives add bank trigger {"text": "Bank"}

# Tax/Interest times
scoreboard objectives add ep.interest_time minecraft.custom:minecraft.play_time "Last Interest"
scoreboard objectives add ep.tax_time minecraft.custom:minecraft.play_time "Last Tax"
scoreboard objectives add ep.income dummy "Income"




## The sections sets up the constant scoreboard values

# Default mode is realistic mode
execute unless score #ep.realistic_enabled ep.config = #ep.realistic_enabled ep.config run scoreboard players set #ep.realistic_enabled ep.config 1





# define entity #ep.debt.phase.1
scoreboard players set #ep.debt.phase.1 ep.variable 432000
# define entity #ep.debt.phase.2
scoreboard players set #ep.debt.phase.2 ep.variable 864000
# define entity #ep.debt.blacklist_clearance
scoreboard players set #ep.debt.blacklist_clearance ep.variable 216000




# The amount players have spent/earned on shop signs
execute unless score #ep.admin_earned ep.variable = #ep.admin_earned ep.variable run scoreboard players set #ep.admin_earned ep.variable 0
execute unless score #ep.admin_spent ep.variable = #ep.admin_spent ep.variable run scoreboard players set #ep.admin_spent ep.variable 0

# define objective ep.ab_displace Determine the time to 'displace' currency's actionbar to subtitle
scoreboard objectives add ep.ab_displace dummy
scoreboard objectives add ep.ab_displace2 dummy

#o used to grab positions of players and entities
scoreboard objectives add ep.position.x dummy
scoreboard objectives add ep.position.y dummy
scoreboard objectives add ep.position.z dummy

#o Stores shop owner's UID into the shops
scoreboard objectives add ep.owner dummy

#o Stores how much money a player shop owns
scoreboard objectives add ep.stored_money dummy

# define entity #ep.state
#c #ep.enum.shop.infinite_use ep.state = 0 -> entity #ep.enum.shop.infinite_use
scoreboard players set #ep.enum.shop.infinite_use ep.state 0
#c #ep.enum.command.idle ep.state = 0 -> entity #ep.enum.command.idle 'Idle' enum state of player
scoreboard players set #ep.enum.command.idle ep.state 0

function directory:enum/auction
function directory:enum/bank
function directory:enum/bid
function directory:enum/boolean
function directory:enum/buyer
function directory:enum/debt
function directory:enum/loan
function directory:enum/seller
function directory:enum/sign
function directory:enum/deposit
function directory:enum/withdraw
function directory:enum/pay
function directory:enum/travel
function directory:enum/sell
function directory:enum/buy
function directory:enum/market


# define entity #ep.float_tooltip.lifetime Determine how long 'float tooltip' should live
scoreboard players set #ep.float_tooltip.lifetime ep.variable 10
# define entity #ep.float_tooltip.move_time Determine how long 'float tooltip' should move before stopping
scoreboard players set #ep.float_tooltip.move_time ep.variable 6

# define entity #ep.currency.displacement_time
scoreboard players set #ep.currency.displacement_time ep.variable 40
# define entity #ep.start_money
scoreboard players set #ep.start_money ep.variable 0
# define entity #ep.start_bank
scoreboard players set #ep.start_bank ep.variable 0



# define entity #ep.bed.near
scoreboard players set #ep.bed.near ep.variable -5
# define entity #ep.bed.far
scoreboard players set #ep.bed.far ep.variable 5

# define entity #ep.ui.value
# define entity #ep.ui.default
scoreboard players set #ep.ui.default ep.variable 0


# define entity #ep.mob.drop
scoreboard players set #ep.mob.drop ep.variable 100

# define entity BOOLEAN_STATE
scoreboard players set BOOLEAN_STATE ep.variable 2
# define entity ZERO xD
scoreboard players set ZERO ep.variable 0
# define entity 100
scoreboard players set 100 ep.variable 100
# define entity 8
scoreboard players set 8 ep.variable 8

# define entity 1728
scoreboard players set 1728 ep.variable 1728

# define entity -1
scoreboard players set -1 ep.variable -1
# define entity MAX_INT Maxium integer limit (2^31-1)
scoreboard players set MAX_INT ep.variable 2147483647
# define entity MIN_STACK Minium item stack size
scoreboard players set MIN_STACK ep.variable 1
# define entity ITEM_STACK Item stack size
scoreboard players set ITEM_STACK ep.variable 64
# define entity MINUTE One minute in ticks
scoreboard players set MINUTE ep.variable 1200
# define entity HOUR One hour in ticks
scoreboard players set HOUR ep.variable 72000
# define entity DAY One day in ticks
scoreboard players set DAY ep.variable 1728000
# define entity SECOND One second in ticks
scoreboard players set SECOND ep.variable 20
# define entity MINUTE_IN_SECOND One minute in seconds
scoreboard players set DAY_IN_HOURS ep.variable 24
# define entity MINUTE_IN_SECOND One minute in seconds
scoreboard players set MINUTE_IN_SECOND ep.variable 60
# define entity SINGLE_DIGIT
scoreboard players set SINGLE_DIGIT ep.variable 10

# Gametime time values
scoreboard players set GAME_HOUR ep.variable 1000
scoreboard players set GAME_MINUTE ep.variable 1440
scoreboard players set GAME_DAY ep.variable 24000

# define entity #ep.target_uid Target UID, use to find the matching UID
# define entity #ep.current_shop_uid Current UID of a sign
execute unless score #ep.current_shop_uid ep.session matches -2147483648..2147483647 run scoreboard players set #ep.current_shop_uid ep.session 0
# define entity #ep.current_player_uid Current UID of a player
# execute unless score #ep.current_player_uid ep.session matches -2147483648..2147483647 run scoreboard players set #ep.current_player_uid ep.session 0
# define entity #ep.auction.state
execute unless score #ep.auction.state ep.state matches -2147483648..2147483647 run scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.idle ep.state

forceload add 29999999 29999999

# define entity #ep.timeline Absolute global time scale
# define entity #ep.raycast
# define tag ep.spawning
# define tag ep.trait.ui.number
# define tag ep.trait.ui.button
# define tag ep.trait.ui.submit

# define bossbar ep:auction
bossbar add ep:auction {"text": "Auction", "color": "red"}
bossbar set ep:auction color red
bossbar set ep:auction style notched_10

function directory:config
function unit_test:main


### constants
scoreboard players set #9 ep.variable 9
scoreboard players set #10 ep.variable 10



function directory:backup_setup_settings
function directory:setup_settings

execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.true ep.state run function config:actionbar/enable
execute if score #ep.actionbar_statistic ep.config = #ep.enum.bool.false ep.state run function config:actionbar/disable

execute if score #ep.below_name_statistic ep.config = #ep.enum.bool.true ep.state run function config:below_name/enable
execute if score #ep.below_name_statistic ep.config = #ep.enum.bool.false ep.state run function config:below_name/disable

execute if score #ep.list_statistic ep.config = #ep.enum.bool.true ep.state run function config:list/enable
execute if score #ep.list_statistic ep.config = #ep.enum.bool.false ep.state run function config:list/disable

execute if score #ep.sidebar_statistic ep.config = #ep.enum.bool.true ep.state run function config:sidebar/enable
execute if score #ep.sidebar_statistic ep.config = #ep.enum.bool.false ep.state run function config:sidebar/disable

## Good news, things were (probably successful!)
tellraw @a ["",{"text":"\u276cEP\u276d","color":"#D4AF37"},{"text":" Loaded Successfully","color":"#6ED76E"}]

## Hotfix for old versions or messed up players
execute as @a[tag=ep.player.init] unless score @s ep.debt.cscore matches 0.. run scoreboard players operation @s ep.debt.cscore = #ep.default.credit_score ep.config


# Run load for plugins
function #economy_plus:load

scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.caster


execute if entity @s[tag=ep.trait.terminal] run function directory:terminal/node/general


execute if entity @s[tag=ep.terminal.deposit] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.withdraw] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.auction_item] run function directory:terminal/node/auction
execute if entity @s[tag=ep.terminal.minimum_bid] run function directory:terminal/node/auction
execute if entity @s[tag=ep.terminal.loan] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.credit] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.admin_setting] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.player_setting] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.pay] run function directory:terminal/node/general
execute if entity @s[tag=ep.terminal.bank] run function directory:terminal/node/general

function #economy_plus:terminal_tick
tag @a[tag=ep.caster] remove ep.caster

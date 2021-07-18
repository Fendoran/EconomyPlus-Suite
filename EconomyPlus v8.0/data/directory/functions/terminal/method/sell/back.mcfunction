data merge entity @e[tag=ep.trait.player_shop,limit=1,sort=nearest] {PickupDelay:0,CustomNameVisible:0b}
tp @e[tag=ep.trait.player_shop,limit=1,sort=nearest] @s

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove
execute at @s rotated ~ 0 anchored eyes positioned ^ ^-1 ^1 run function directory:terminal/init/sell/item

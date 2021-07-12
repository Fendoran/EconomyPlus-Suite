#data merge entity @e[tag=ep.trait.auction_item,limit=1] {PickupDelay:0,CustomNameVisible:0b}
#tp @e[tag=ep.trait.auction_item,limit=1] @s

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove
execute at @s rotated ~ 0 anchored eyes positioned ^ ^-1 ^1 run function directory:player/command/auction/item/ui/main

execute store result storage ep:auction seller.uid0 int 1 run scoreboard players get @s ep.uid0
execute store result storage ep:auction seller.uid1 int 1 run scoreboard players get @s ep.uid1
execute store result storage ep:auction seller.uid2 int 1 run scoreboard players get @s ep.uid2
execute store result storage ep:auction seller.uid3 int 1 run scoreboard players get @s ep.uid3

# Sets the state of the auction to item, which disallows other players from submitting items
function directory:auction/state/item

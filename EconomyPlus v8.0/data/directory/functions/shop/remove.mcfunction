## Removes the shop entity if the sign has been destroyed
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:uid/get
scoreboard players operation #ep.use ep.variable = @s ep.use
execute if entity @s[tag=ep.trait.market] run function directory:shop/remove_market
execute unless entity @s[tag=ep.trait.market] run function directory:heap/remove
execute unless entity @s[tag=ep.trait.market] run function directory:ui/remove
execute positioned ^ ^ ^-0.5 as @e[type=item_frame,distance=...05,tag=ep.item_frame.init,sort=nearest,limit=1] run function directory:shop/method/item_frame/reset
setblock ~ ~ ~ minecraft:air
kill @s
scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:ui/remove
tag @s add ep.shop.link
execute as @a[tag=ep.player.init] at @s if score @s ep.session = #ep.target_uid ep.owner rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 as @e[type=marker,tag=ep.shop.link] run function directory:shop/init/reset_time/ui
tag @s remove ep.shop.link
function directory:heap/method/get_quantity

function directory:shop/state/reset_time

execute if score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/method/set_reset_time

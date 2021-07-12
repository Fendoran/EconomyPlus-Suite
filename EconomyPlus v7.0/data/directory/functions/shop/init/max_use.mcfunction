scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:ui/remove
tag @s add ep.shop.link
execute as @a[tag=ep.player.init] at @s if score @s ep.session = #ep.target_uid ep.owner rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 as @e[type=area_effect_cloud,tag=ep.shop.link] run function directory:shop/init/max_use/ui
tag @s remove ep.shop.link
function directory:heap/get/quantity
execute store result score #ep.count ep.variable run data get storage ep:memory output_quantity

function directory:shop/state/max_use

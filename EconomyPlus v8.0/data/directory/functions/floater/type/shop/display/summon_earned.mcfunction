## Summons the amount the admin shop has earned
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.shop.amount_earned"]}
summon minecraft:area_effect_cloud ~ ~.25 ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.shop.earned_display"],CustomName:'{"text":"Players Spent","color":"#4F9BFF"}'}
scoreboard players operation #ep.display ep.variable = #ep.admin_earned ep.variable
execute as @e[tag=ep.trait.floater.shop.amount_earned,distance=..1] run function directory:floater/method/formatted_earned
tag @s add ep.trait.toggle

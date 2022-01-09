## Summons the amount the admin shop has earned
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.shop.amount_spent"]}
summon minecraft:area_effect_cloud ~ ~.25 ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.shop.spent_display"],CustomName:'{"text":"Players Earned","color":"#FF3030"}'}
scoreboard players operation #ep.display ep.variable = #ep.admin_spent ep.variable
execute as @e[tag=ep.trait.floater.shop.amount_spent,distance=..1] run function directory:floater/method/formatted_earned
tag @s remove ep.trait.toggle

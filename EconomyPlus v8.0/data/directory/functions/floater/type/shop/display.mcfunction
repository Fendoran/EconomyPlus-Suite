## Displays the amount the admin shops have earned and spent
execute unless entity @s[tag=ep.trait.toggle] positioned ~ ~-1.25 ~ unless entity @e[tag=ep.trait.floater.shop.amount_spent,distance=..1] run function directory:floater/type/shop/display/summon_earned
execute if entity @s[tag=ep.trait.toggle] positioned ~ ~-1.25 ~ unless entity @e[tag=ep.trait.floater.shop.amount_earned,distance=..1] run function directory:floater/type/shop/display/summon_spent

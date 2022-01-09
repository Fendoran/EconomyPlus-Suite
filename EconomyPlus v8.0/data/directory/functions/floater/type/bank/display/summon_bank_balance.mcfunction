## Summons the bank balance of the nearest player
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.bank.bank_balance"]}
summon minecraft:area_effect_cloud ~ ~.25 ~ {CustomNameVisible:1b,Duration:100,Tags:["ep.trait.floater.bank.bank_balance_display"],CustomName:'{"text":"Balance in Vault","color":"#D4AF37"}'}
scoreboard players operation #ep.display ep.variable = #ep.vault ep.variable
execute as @e[tag=ep.trait.floater.bank.bank_balance,distance=..1] run function directory:floater/method/formatted_earned

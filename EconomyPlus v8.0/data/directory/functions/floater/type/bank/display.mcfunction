## Displays the amount the admin shops have earned and spent
execute if score #ep.realistic_enabled ep.config matches 1 positioned ~ ~-1.25 ~ unless entity @e[tag=ep.trait.floater.bank.bank_balance,distance=..1] run function directory:floater/type/bank/display/summon_bank_balance

## Finishes the sign off
execute if entity @s[tag=ep.trait.buyer] run function directory:buyer/state/finish
execute if entity @s[tag=ep.trait.seller] run function directory:seller/state/finish
execute if entity @s[tag=ep.trait.market] run function directory:market/state/finish

data modify block ~ ~ ~ Text4 set value '[{"nbt":"currency_icon","storage":"ep:config","color":"#D4AF37"}, {"score": {"name": "#ep.count", "objective": "ep.variable"}, "color": "#FFD700"}]'

function directory:animation/shop_sign_placed/spawn
tag @s remove ep.trait.unstable
scoreboard players operation @s ep.state = #ep.enum.sign.finish ep.state
scoreboard players operation #ep.target_uid ep.session = @s ep.owner

function directory:uid/get
execute if entity @s[tag=ep.trait.market] if score #ep.realistic_enabled ep.config matches 1 as @a run function directory:uid/compare

execute if entity @s[tag=ep.trait.market] if score #ep.realistic_enabled ep.config matches 1 as @a[tag=ep.pass_uuid_check] run function directory:market/owner/pay

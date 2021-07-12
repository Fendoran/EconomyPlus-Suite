setblock ~ 255 ~ oak_sign
data modify block ~ 255 ~ Text1 set value '[{"text":"$","color":"#D4AF37"},{"score":{"name":"@e[tag=ep.spawning,tag=ep.trait.currency_drop,limit=1,sort=nearest]","objective":"ep.money"},"color":"#FFD700"}]'
data modify entity @e[tag=ep.trait.currency_drop_name,tag=ep.spawning,limit=1,sort=nearest] CustomName set from block ~ 255 ~ Text1
tag @s add ep.target_head_replace
execute as @a run function directory:uid/compare
execute as @a[tag=ep.pass_uuid_check] run loot replace entity @e[type=armor_stand,tag=ep.spawning,tag=ep.trait.currency_drop,tag=ep.target_head_replace,limit=1] armor.head loot directory:entity/player_name
execute as @a[tag=ep.pass_uuid_check] run loot give @p loot directory:entity/player_name

tag @a[tag=ep.pass_uuid_check] remove ep.pass_uuid_check
tag @s remove ep.target_head_replace
setblock ~ 255 ~ air
function directory:uid/copy

tag @s remove ep.spawning

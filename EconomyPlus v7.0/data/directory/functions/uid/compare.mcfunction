## Grabs the executors uuid (assuming it is in their scoreboard)
tag @s[tag=ep.pass_uuid_check] remove ep.pass_uuid_check
tag @s add ep.pass_uuid_check
execute unless score @s ep.uid0 = #ep.uid0 ep.variable run tag @s remove ep.pass_uuid_check
execute unless score @s[tag=ep.pass_uuid_check] ep.uid1 = #ep.uid1 ep.variable run tag @s remove ep.pass_uuid_check
execute unless score @s[tag=ep.pass_uuid_check] ep.uid2 = #ep.uid2 ep.variable run tag @s remove ep.pass_uuid_check
execute unless score @s[tag=ep.pass_uuid_check] ep.uid3 = #ep.uid3 ep.variable run tag @s remove ep.pass_uuid_check

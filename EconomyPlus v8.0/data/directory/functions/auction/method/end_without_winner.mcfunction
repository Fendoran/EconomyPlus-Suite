## The auction has ended without a seller, so return items to seller
execute store result score #ep.uid0 ep.variable run data get storage ep:auction seller.uid0
execute store result score #ep.uid1 ep.variable run data get storage ep:auction seller.uid1
execute store result score #ep.uid2 ep.variable run data get storage ep:auction seller.uid2
execute store result score #ep.uid3 ep.variable run data get storage ep:auction seller.uid3
execute as @a[tag=ep.player.init] run function directory:uid/compare

execute as @p[tag=ep.pass_uuid_check] at @s run function directory:auction/method/return_items

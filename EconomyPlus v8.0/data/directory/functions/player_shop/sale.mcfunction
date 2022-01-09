#> TODO
scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.player_shop.owner

execute unless entity @a[tag=ep.player_shop.owner, distance=..5] at @a[tag=ep.player_shop.owner] run function directory:player_shop/method/return_item

tag @a[tag=ep.player_shop.owner] remove ep.player_shop.owner

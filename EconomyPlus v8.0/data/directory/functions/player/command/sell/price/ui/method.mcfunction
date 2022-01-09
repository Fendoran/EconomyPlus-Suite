## sets price
scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @e[tag=ep.trait.player_shop] if score @s ep.session = #ep.target_uid ep.session run function directory:player/command/sell/price/main

scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.caster

execute as @a[tag=ep.caster] unless entity @s[distance=..5] run function directory:terminal/event/out_of_range
execute unless entity @a[tag=ep.caster] run function directory:terminal/event/player_is_gone

tag @a[tag=ep.caster] remove ep.caster

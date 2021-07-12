execute as @a[tag=ep.caster] unless entity @s[distance=..5] run function directory:terminal/event/out_of_range
execute unless entity @a[tag=ep.caster] run function directory:terminal/event/player_is_gone

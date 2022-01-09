## Signal for actionbar button
execute as @a[tag=ep.caster] run function directory:player/command/settings/home/ui/book/give

execute as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 as @a[tag=ep.caster] run function directory:player/command/settings/home/ui/main

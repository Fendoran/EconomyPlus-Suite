## Signal for announcement button
scoreboard players operation #ep.state ep.state = @p[tag=ep.caster] ep.announcement
execute if score #ep.state ep.state matches 1 run scoreboard players set @p[tag=ep.caster] ep.announcement 0
execute if score #ep.state ep.state matches 0 run scoreboard players set @p[tag=ep.caster] ep.announcement 1

execute as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 as @a[tag=ep.caster] run function directory:player/command/settings/home/ui/main

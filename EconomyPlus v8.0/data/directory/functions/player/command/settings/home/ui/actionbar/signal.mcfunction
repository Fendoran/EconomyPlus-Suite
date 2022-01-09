## Signal for actionbar button
scoreboard players operation #ep.state ep.state = @p[tag=ep.caster] ep.actionbar
execute if score #ep.state ep.state matches 1 run scoreboard players set @p[tag=ep.caster] ep.actionbar 0
execute if score #ep.state ep.state matches 0 run scoreboard players set @p[tag=ep.caster] ep.actionbar 1

execute as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 as @a[tag=ep.caster] run function directory:player/command/settings/home/ui/main

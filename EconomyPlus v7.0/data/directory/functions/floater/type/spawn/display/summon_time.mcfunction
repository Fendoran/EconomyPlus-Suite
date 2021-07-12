## Summons the bank balance of the nearest player
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:15,Tags:["ep.trait.floater.spawn.time"]}
summon minecraft:area_effect_cloud ~ ~.25 ~ {CustomNameVisible:1b,Duration:15,Tags:["ep.trait.floater.spawn.time_display"],CustomName:'{"text":"Time","color":"#F0E68C"}'}
execute as @e[tag=ep.trait.floater.spawn.time,distance=..1] run function directory:floater/method/formatted_time

## Triggered by the sign instead of the player
summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["ep.bank.sign.anchor","ep.spawning"]}
scoreboard players operation #ep.session ep.session = @s ep.session
execute as @e[type=area_effect_cloud,tag=ep.spawning] at @s run function directory:player/command/bank/anchor/init
data merge block ~ ~ ~ {Text4:'[{"text":"Closed","color":"#FF3C26","clickEvent":{"action":"run_command","value":"/function directory:player/command/bank/closed"}},{"text":" Terminal","color":"#BFBFBF"}]'}
trigger bank

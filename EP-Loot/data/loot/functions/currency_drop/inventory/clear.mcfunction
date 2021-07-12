execute store result score #ep.transaction ep.money run clear @s iron_nugget{frloot:1}
execute store result score #ep.drop ep.variable run clear @s gold_nugget{frloot:1}

scoreboard players operation #ep.drop ep.variable *= #10 ep.variable
scoreboard players operation #ep.transaction ep.money += #ep.drop ep.variable

tag @s add ep.caster

scoreboard players operation @a[tag=ep.caster] ep.money += #ep.transaction ep.money

execute as @a[tag=ep.caster] run function loot:currency_drop/message/pickup

tag @a[tag=ep.caster] remove ep.caster

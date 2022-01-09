execute unless score @s ep.ab_displace matches ..-1 run scoreboard players remove @s ep.ab_displace 1
execute unless score @s ep.ab_displace2 matches ..-1 run scoreboard players remove @s ep.ab_displace2 1

execute if score @s ep.ab_displace matches 1.. unless score @s ep.ab_displace2 matches 1.. run function directory:tracker/currency/actionbar/displace
execute if score @s ep.ab_displace matches 0 unless score @s ep.ab_displace2 matches 1.. run function directory:tracker/currency/actionbar/switch_event
execute if score @s ep.ab_displace matches ..-1 unless score @s ep.ab_displace2 matches 1.. run function directory:tracker/currency/actionbar/default

execute if score @s ep.ab_displace2 matches 0 unless score @s ep.ab_displace matches 1.. run function directory:tracker/currency/actionbar/switch_event
execute if score @s ep.ab_displace2 matches ..-1 unless score @s ep.ab_displace matches 1.. run function directory:tracker/currency/actionbar/default

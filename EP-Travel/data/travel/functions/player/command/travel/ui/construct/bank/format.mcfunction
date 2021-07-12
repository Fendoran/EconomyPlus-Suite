## If time is 0, display text instead
setblock 29999999 0 29999999 oak_sign{Text1:'[{"text":"$","color":"#D4AF37"},{"score":{"name":"#ep.terminal.teleport_cost4","objective":"ep.variable"},"color":"#FFD700"}]'}
data modify entity @s CustomName set value ''
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 air

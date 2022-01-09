## Formats an currency amount for the floater texts
setblock 29999999 255 29999999 oak_sign
data modify block 29999999 255 29999999 Text1 set value '[{"text":"$","color":"#D4AF37"},{"score":{"name":"#ep.display","objective":"ep.variable"},"color":"#FFD700"}]'
data modify entity @s CustomName set from block 29999999 255 29999999 Text1
setblock 29999999 255 29999999 air

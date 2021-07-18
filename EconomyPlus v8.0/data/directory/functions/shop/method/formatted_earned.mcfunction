## Formats the amount the player has earned from a shop (for tooltip)
setblock 29999999 255 29999999 oak_sign
data modify block 29999999 255 29999999 Text1 set value '[{"text":"Collect: ","color":"#ffffff"}, {"text":"$","color":"#D4AF37"},{"score":{"name":"#ep.price","objective":"ep.variable"},"color":"#FFD700"}]'
data modify entity @s CustomName set from block 29999999 255 29999999 Text1
setblock 29999999 255 29999999 air

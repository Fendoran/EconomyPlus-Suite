## Formats the amount the player has earned from a shop (for tooltip)
setblock 29999999 255 29999999 oak_sign
data modify block 29999999 255 29999999 Text1 set value '[{"text":"Collect: ","color":"#ffffff"}, {"score":{"name":"#ep.use","objective":"ep.variable"},"color":"#C0C0C0"}]'
data modify entity @s CustomName set from block 29999999 255 29999999 Text1
setblock 29999999 255 29999999 air

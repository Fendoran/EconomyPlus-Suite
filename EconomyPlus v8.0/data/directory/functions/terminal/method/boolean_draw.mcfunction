scoreboard players add #ep.ui.value ep.variable 1
scoreboard players operation #ep.ui.value ep.variable %= BOOLEAN_STATE ep.variable

execute if score #ep.ui.value ep.variable = #ep.enum.bool.false ep.state run data modify block 29999999 0 29999999 Text3 set value '{"text": "⨉", "color": "red", "bold": true}'
execute if score #ep.ui.value ep.variable = #ep.enum.bool.true ep.state run data modify block 29999999 0 29999999 Text3 set value '{"text": "✓", "color": "#32CD32", "bold": true}'

data modify block 29999999 0 29999999 Text1 set value '[{"nbt": "Text2", "block": "29999999 0 29999999", "interpret": true}, {"text": " ", "color": "#ffffff"}, {"nbt": "Text3", "block": "29999999 0 29999999", "interpret": true}]'

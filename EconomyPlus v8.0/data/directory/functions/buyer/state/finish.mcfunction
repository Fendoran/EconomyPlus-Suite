#data modify block ~ ~ ~ Text1 set value '[{"text":"Shop ","color":"#7DD2B4", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/use"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Buy", "color": "#4F9BFF"}]'
## COLOR WILL CHANGE
execute if entity @s[tag=ep.trait.shop.normal] run data modify block ~ ~ ~ Text1 set value '[{"text":"Shop ","color":"#00fff2", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/use"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Buy", "color": "#4F9BFF"}]'
execute if entity @s[tag=ep.trait.shop.dynamic] run data modify block ~ ~ ~ Text1 set value '[{"text":"Shop ","color":"#00ff1a", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/use"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Buy", "color": "#4F9BFF"}]'
execute if entity @s[tag=ep.trait.shop.use] run data modify block ~ ~ ~ Text1 set value '[{"text":"Shop ","color":"#ff00f2", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/use"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Buy", "color": "#4F9BFF"}]'

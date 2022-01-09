## Reverts slightly created sign to old sign
execute if entity @s[tag=ep.trait.buyer] run data merge block ~ ~ ~ {Text1: '[{"text": "Shop ", "color": "#7DD2B4", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/init"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Buy", "color": "#4F9BFF"}]', Text2: '{"text": "Item", "color": "#7CFC00", "underlined": false}', Text3: '[{"text": "Amount", "color": "#ffffff"}]', Text4: '[{"text": "Price", "color": "#FFD700"}]'}
execute if entity @s[tag=ep.trait.seller] run data merge block ~ ~ ~ {Text1: '[{"text": "Shop ", "color": "#7DD2B4", "clickEvent": {"action": "run_command", "value": "/function directory:buyer/init"}},{"text":"⋄ ","color":"#ffffff"},{"text": "Sell", "color": "#FF3030"}]', Text2: '{"text": "Item", "color": "#7CFC00", "underlined": false}', Text3: '[{"text": "Amount", "color": "#ffffff"}]', Text4: '[{"text": "Price", "color": "#FFD700"}]'}
execute if entity @s[tag=ep.trait.market] run data merge block ~ ~ ~ {Text1: '', Text2: '', Text3: '', Text4: ''}

execute as @e[tag=ep.trait.ui] if score @s ep.session = #ep.target_uid ep.variable run kill @s
execute as @e[tag=ep.trait.ui_child] if score @s ep.session = #ep.target_uid ep.variable run kill @s
execute positioned ^ ^ ^-0.5 as @e[type=item_frame,distance=...05,tag=ep.item_frame.init,sort=nearest,limit=1] run function directory:shop/method/item_frame/reset
kill @s

tellraw @a [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"selector": "@s", "color": "#ffffff"}, {"text": " is auctioning ", "color": "#C0C0C0"}, {"score": {"name": "#ep.item_count", "objective": "ep.variable"}, "color": "#808080"}, {"text": " "}, {"nbt": "item.name", "storage": "ep:auction", "interpret": true, "color": "#32CD32"}, {"text": " starting at ", "color": "#C0C0C0"}, {"text": "$", "color": "#D4AF37"}, {"nbt": "highest_bidder.bid", "storage": "ep:auction", "color": "#FFD700"}]

execute as @a at @s run playsound minecraft:block.note_block.pling voice @s

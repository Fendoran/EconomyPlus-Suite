tellraw @a[distance=..5] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"selector": "@a[tag=ep.player_shop.owner]", "color": "#ffffff"}, {"text": " is selling ", "color": "#C0C0C0"}, {"score": {"name": "#ep.quantity", "objective": "ep.variable"}, "color": "#808080"}, {"text": " ", "color": "#C0C0C0"}, {"nbt": "output_name", "storage": "ep:memory", "interpret": true, "color": "#32CD32"}]
playsound block.note_block.pling voice @a[distance=..5]

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Please place the item you wish to ", "color": "#C0C0C0"}, {"text": "Auction", "color": "red"}]
playsound block.note_block.harp voice @s
advancement grant @s[advancements={economy_plus:auction_start=false}] only economy_plus:auction_start

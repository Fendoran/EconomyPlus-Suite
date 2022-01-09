# Displays to player that they are no longer blacklisted to shops
# function directory:tracker/currency/displace
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Bad credit have been removed. You can now use shop signs again.", "color": "#C0C0C0"}]

playsound entity.item.break voice @s

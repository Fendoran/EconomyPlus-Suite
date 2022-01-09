# Displays to player that they are no longer blacklisted to shops
# function directory:tracker/currency/displace
tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Autopay was unable to pay this off.  You must manually pay this off before the end of this debt term.", "color": "#C0C0C0"}]

playsound entity.item.break voice @s

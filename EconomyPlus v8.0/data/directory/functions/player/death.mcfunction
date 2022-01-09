## Oh no, the player has died, what is their punishment?

scoreboard players reset #ep.lose ep.variable
scoreboard players operation #ep.void ep.variable = @s ep.money
scoreboard players operation #ep.void ep.variable *= #ep.dead.void ep.variable
scoreboard players operation #ep.void ep.variable /= 100 ep.variable
scoreboard players operation #ep.lose ep.variable += #ep.void ep.variable

scoreboard players operation #ep.sender ep.money = @s ep.money
scoreboard players operation #ep.receiver ep.money = ZERO ep.variable
scoreboard players operation #ep.transaction ep.money = #ep.lose ep.variable
function directory:transaction/transfer
scoreboard players operation @s ep.money = #ep.sender ep.money

scoreboard players operation #ep.vault ep.variable += #ep.void ep.variable

tellraw @s [{"text":"\u276cEP\u276d","color":"#D4AF37"},{"text":" You lost ","color":"red"},{"text":"$","color":"#D4AF37"},{"score":{"name":"#ep.void","objective":"ep.variable"},"color":"#FFD700"},{"text":" (","color":"red"},{"score":{"name":"#ep.dead.void","objective":"ep.variable"},"color":"#32CD32"},{"text":"%","color":"#32CD32"},{"text":")","color":"red"}]
advancement grant @s[advancements={economy_plus:death=false}] only economy_plus:death




# Link to other plugins if they want a player death event
function #economy_plus:player_death
# Resets afterwards because sometimes you aren't sure who/what killed or died
scoreboard players reset @s ep.death
scoreboard players reset @a ep.player_kill

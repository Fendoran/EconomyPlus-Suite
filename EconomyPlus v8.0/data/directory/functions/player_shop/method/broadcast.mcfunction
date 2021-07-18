# define tag ep.player_shop.owner
function directory:ram/clear
data modify storage ep:memory input_item set from entity @s Item
scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.session run tag @s add ep.player_shop.owner

function directory:player_shop/method/get_name

scoreboard players operation #ep.price ep.variable = @s ep.money
execute store result score #ep.quantity ep.variable run data get entity @s Item.Count
setblock 29999999 0 29999999 minecraft:oak_sign{Text1: '[{"text": "$", "color": "#D4AF37"}, {"score": {"name": "#ep.price", "objective": "ep.variable"}, "color": "#FFD700"}, {"text": " for ", "color": "#C0C0C0"}, {"score": {"name": "#ep.quantity", "objective": "ep.variable"}, "color": "#808080"}, {"text": " ", "color": "#C0C0C0"}, {"nbt": "output_name", "storage": "ep:memory", "interpret": true, "color": "#32CD32"}]'}
data modify entity @s CustomName set from block 29999999 0 29999999 Text1
setblock 29999999 0 29999999 minecraft:air

function directory:player_shop/message/broadcast
tag @a[tag=ep.player_shop.owner] remove ep.player_shop.owner

scoreboard players operation @s ep.state = #ep.enum.sell.broadcast ep.state

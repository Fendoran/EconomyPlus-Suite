data modify entity @s Item set from storage ep:memory input_item
scoreboard players operation @s ep.session = #ep.target_uid ep.session
scoreboard players operation @s ep.state = #ep.enum.sell.item ep.state

function directory:player_shop/constructor/finalize

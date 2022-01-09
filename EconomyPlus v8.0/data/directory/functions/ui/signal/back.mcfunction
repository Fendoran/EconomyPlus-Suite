## Runs when the player has clicked on their UI back button
scoreboard players operation #ep.target_uid ep.session = @s ep.session
execute if score @s ep.owner = #ep.target_uid ep.owner run function directory:shop/signal/back

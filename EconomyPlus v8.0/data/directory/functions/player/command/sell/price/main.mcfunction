## Sets price from UI terminal
function directory:terminal/event/close_terminal

scoreboard players operation @s ep.money = #ep.ui.value ep.variable
scoreboard players operation @s ep.state = #ep.enum.sell.price ep.state

function directory:player_shop/method/broadcast

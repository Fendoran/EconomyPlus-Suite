data modify entity @s PickUpDelay set value 32767

function directory:player_shop/sale

### does permanent display
#execute if score @s ep.state = #ep.enum.sell.broadcast ep.state run function directory:player_shop/sale

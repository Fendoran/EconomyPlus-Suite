## Activates when the back button is pressed on the UI for shop signs
execute if score @s[tag=ep.trait.market] ep.state = #ep.enum.sign.quantity ep.state run function directory:shop/init/buy_or_sell/redraw
execute if score @s[tag=!ep.trait.market] ep.state = #ep.enum.sign.quantity ep.state run function directory:shop/init/style/redraw
execute if score @s ep.state = #ep.enum.sign.max_use ep.state run function directory:shop/init/quantity/redraw
execute if score @s[tag=ep.trait.shop.use] ep.state = #ep.enum.sign.reset_time ep.state run function directory:shop/init/max_use/redraw
execute if score @s[tag=ep.trait.shop.dynamic] ep.state = #ep.enum.sign.reset_time ep.state run function directory:shop/init/percent_change/redraw
execute if score @s[tag=ep.trait.shop.normal] ep.state = #ep.enum.sign.price ep.state run function directory:shop/init/quantity/redraw
execute if score @s[tag=!ep.trait.market,tag=ep.trait.shop.use] ep.state = #ep.enum.sign.price ep.state if score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/init/max_use/redraw
execute if score @s[tag=!ep.trait.market,tag=ep.trait.shop.use] ep.state = #ep.enum.sign.price ep.state unless score @s ep.max_use = #ep.enum.shop.infinite_use ep.state run function directory:shop/init/reset_time/redraw
execute if score @s[tag=!ep.trait.market,tag=ep.trait.shop.dynamic] ep.state = #ep.enum.sign.price ep.state run function directory:shop/init/long_reset_time/redraw

execute if score @s[tag=ep.trait.market] ep.state = #ep.enum.sign.price ep.state run function directory:shop/init/quantity/redraw

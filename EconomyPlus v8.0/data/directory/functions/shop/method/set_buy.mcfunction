## Sets the market to a buy shop
function directory:ram/clear

tag @s remove ep.trait.market.sell
tag @s add ep.trait.market.buy

# Creates shop (with back button)
function directory:shop/init/quantity

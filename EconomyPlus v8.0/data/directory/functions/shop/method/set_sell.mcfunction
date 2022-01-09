## Sets the market to a sell shop
function directory:ram/clear

tag @s remove ep.trait.market.buy
tag @s add ep.trait.market.sell

# Creates shop (with back button)
function directory:shop/init/quantity

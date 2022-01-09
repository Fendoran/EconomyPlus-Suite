## Sets the market to a buy shop
function directory:ram/clear

tag @s remove ep.trait.shop.normal
tag @s remove ep.trait.shop.dynamic
tag @s add ep.trait.shop.use

# Creates shop (with back button)
function directory:shop/init/quantity

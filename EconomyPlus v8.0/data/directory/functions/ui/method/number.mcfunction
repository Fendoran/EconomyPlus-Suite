## Creates numbers dial functionality
# If max_use, it checks if it is less than 0, in which case it sets it to infinity
# #ep.ui.value is the value on the dial
execute if entity @s[tag=ep.trait.ui.max_use] if score #ep.ui.value ep.variable <= #ep.enum.shop.infinite_use ep.state run scoreboard players operation #ep.ui.value ep.variable = #ep.enum.shop.infinite_use ep.state
execute unless entity @s[tag=ep.trait.ui.max_use] if score #ep.ui.value ep.variable < #ep.ui.default ep.variable run scoreboard players operation #ep.ui.value ep.variable = #ep.ui.default ep.variable
execute if entity @s[tag=ep.trait.ui.quantity] if score #ep.ui.value ep.variable matches 65.. run scoreboard players set #ep.ui.value ep.variable 64

# draws the value
function directory:ui/method/draw

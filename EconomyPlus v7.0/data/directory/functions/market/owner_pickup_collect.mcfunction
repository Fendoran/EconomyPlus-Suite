## When the owner is standing in the item, this is ran
## Creates items and money for shop owner to collect later after the market shop has been destroyed
function directory:heap/get/quantity
function directory:heap/get/data

scoreboard players operation #ep.sender ep.money = MAX_INT ep.variable
scoreboard players operation #ep.receiver ep.money = @s ep.money
scoreboard players operation #ep.transaction ep.money = #ep.price ep.variable

function directory:transaction/transfer

scoreboard players operation @s ep.money = #ep.receiver ep.money

function directory:market/message/owner/pickup


execute store result score #ep.total_quantity ep.variable run data get storage ep:memory output_quantity
scoreboard players operation #ep.total_quantity ep.variable *= #ep.use ep.variable

scoreboard players operation #ep.left_quantity ep.variable = #ep.total_quantity ep.variable


execute if score #ep.total_quantity ep.variable matches 1.. run function directory:market/pickup_loop


function directory:heap/remove
function directory:ui/remove

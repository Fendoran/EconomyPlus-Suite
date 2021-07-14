## Initializes shop
# Shop ID
scoreboard players operation @s ep.session = #ep.current_shop_uid ep.session
scoreboard players add #ep.current_shop_uid ep.session 1
# Owner UUID
function directory:uid/copy

function directory:shop/state/init

scoreboard players operation #ep.target_uid ep.session = @s ep.session

function directory:heap/constructor/new
function directory:heap/method/set_item
function directory:heap/method/get_name


function directory:shop/state/setup

function directory:buyer/constructor/finalize

execute rotated as @s run function directory:shop/init/buy_or_sell

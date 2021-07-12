## Initializes shop
scoreboard players operation @s ep.session = #ep.current_shop_uid ep.session
scoreboard players add #ep.current_shop_uid ep.session 1
function directory:shop/state/init

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:heap/constructor/new
function directory:heap/set/item
function directory:heap/get/name

function directory:shop/state/setup

function directory:buyer/constructor/finalize

execute rotated as @s run function directory:shop/init/style

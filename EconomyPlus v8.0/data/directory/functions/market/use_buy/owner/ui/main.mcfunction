## Market Buy UI

function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function directory:market/use_buy/owner/ui/text/construct
execute positioned ^0 ^-0.4 ^ run function directory:market/use_buy/owner/ui/stock/construct
execute positioned ^0 ^-0.8 ^ run function directory:market/use_buy/owner/ui/unstock/construct
execute positioned ^0 ^-1.2 ^ run function directory:market/use_buy/owner/ui/collect/construct
execute positioned ^0 ^-1.6 ^ run function directory:market/use_buy/owner/ui/reset/construct

# This should be changed to an "exit" button
#execute positioned ^0.5 ^-2 ^ run function directory:terminal/ui/button/back/construct/admin_setting

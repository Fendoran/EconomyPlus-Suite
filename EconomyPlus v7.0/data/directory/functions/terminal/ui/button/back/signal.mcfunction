execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.minimum_bid] positioned ^ ^1 ^-1 run function directory:auction/method/back
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.sell.price] positioned ^ ^1 ^-1 run function directory:terminal/method/sell/back

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.player_shop.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/player_shop

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.shop.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.shop.timer] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports/shop

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.auction.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.auction.timer] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports/auction

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.bank.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.bank.timer] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports/bank

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.spawn.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.spawn.timer] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports/spawn

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.home.cost] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.teleports.home.timer] positioned ^ ^1 ^-1 run function directory:terminal/signal/admin_setting/home/settings/teleports/home

# Bank Backs
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.vault.stop_selling_disabled] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/vault/minimum/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.vault.debt_rate] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/vault/stop_selling/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.vault.debt_interval] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/vault/debt_rate/main

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.interest.rate] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/interest/min_vault/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.interest.min_bank] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/interest/rate/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.interest.interval] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/interest/min_bank/main

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.loan.max_percent] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/loan/max/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.loan.interest_rate] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/loan/max_percent/main

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.tax.rate] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/tax/min_income/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.tax.interval] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/vault/tax/rate/main

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.other.amount] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.other.bounty] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.other.bounty_decrease] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/bounty/bounty/main

execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.death.lost] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/main
execute as @a[tag=ep.caster] at @e[tag=ep.reactive_element, tag=ep.terminal.admin_setting.home.settings.bank.death.dropped] positioned ^ ^1 ^-1 as @e[tag=ep.marker_element] at @s rotated as @a[tag=ep.caster] rotated ~ 0 run function admin:settings/home/settings/bank/death/lost/main

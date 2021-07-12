execute as @e[tag=ep.terminal.admin_setting.signs.draw] at @s if score @s ep.session = #ep.target_uid ep.session run function admin:settings/home/signs/arrow/calculate
#execute as @e[tag=ep.trait.shop_formatted] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:shop/method/shop_arrow

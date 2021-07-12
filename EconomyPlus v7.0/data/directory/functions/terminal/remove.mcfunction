## Removes terminal
execute as @e[tag=ep.trait.terminal,tag=ep.terminal.auction.item] if score #ep.auction.state ep.state = #ep.enum.auction.item ep.state if score @s ep.session = #ep.target_uid ep.session run scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state

execute as @e[tag=ep.trait.terminal] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:terminal/method/remove
execute as @e[tag=ep.trait.terminal.child] at @s if score @s ep.session = #ep.target_uid ep.session run function directory:terminal/method/remove_child
execute as @e[tag=ep.trait.auction_item,tag=!ep.trait.in_auction] at @s if score @s ep.session = #ep.target_uid ep.session if score #ep.auction.state ep.state = #ep.enum.auction.min_bid ep.state run function directory:terminal/method/remove_auction

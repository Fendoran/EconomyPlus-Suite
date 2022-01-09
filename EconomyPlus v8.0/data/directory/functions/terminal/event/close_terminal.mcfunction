scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove
# should be moved to a more optimal spot
execute as @e[tag=ep.trait.auction_item,tag=!ep.trait.in_auction] at @s if score @s ep.session = #ep.target_uid ep.session if score #ep.auction.state ep.state = #ep.enum.auction.min_bid ep.state run function directory:terminal/method/remove_auction

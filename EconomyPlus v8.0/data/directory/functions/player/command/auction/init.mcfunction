## Initializes auction settings
data merge storage ep:auction { seller: {name: 'null', uid0: 0, uid1: 0, uid2: 0, uid3: 0}, highest_bidder: {name: '', bid: 0, uid0: 0, uid1: 0, uid2: 0, uid3: 0}, item: {} }
function directory:auction/clear/all

scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state

function directory:player/command/auction/item/main
function directory:player/command/auction/message/select_item

## Initializes auction settings
data merge storage ep:auction { seller: {name: 'null', uid: 0}, highest_bidder: {name: '', bid: 0, uid: 0}, item: {} }
function directory:auction/clear/all

scoreboard players operation #ep.auction.state ep.state = #ep.enum.auction.init ep.state

function directory:player/command/auction/item/main
function directory:player/command/auction/message/select_item

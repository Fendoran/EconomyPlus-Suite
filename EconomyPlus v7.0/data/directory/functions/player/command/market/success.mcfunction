## Activates when player successfully markets an item
scoreboard players operation #ep.raycast ep.variable = #ep.enum.bool.true ep.state

data merge block ~ ~ ~ {Text1: '[{"text": "Market", "color": "#FFA07A", "clickEvent": {"action": "run_command", "value": "/function directory:market/init"}}]', Text2: '{"text": "Item", "color": "#7CFC00", "underlined": false}', Text3: '[{"text": "Amount", "color": "#ffffff"}]', Text4: '[{"text": "Price", "color": "#FFD700"}]'}

scoreboard players operation #ep.transaction ep.money = #ep.market.sign_cost ep.variable

function directory:player/command/market/message/success

scoreboard players set #ep.state ep.state 1
advancement grant @s[advancements={economy_plus:player_market_setup=false}] only economy_plus:player_market_setup

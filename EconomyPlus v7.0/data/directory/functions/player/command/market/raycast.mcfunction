## Recursive function to check if player is looking at empty sign
execute positioned ~ ~ ~ if data block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'} run function directory:player/command/market/success

execute as @s[distance=..5.5] if score #ep.raycast ep.variable = #ep.enum.bool.false ep.state positioned ^ ^ ^0.1 run function directory:player/command/market/raycast

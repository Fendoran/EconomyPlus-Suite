## The player has died, so drop the money drop

execute if score #ep.death.enabled ep.config matches 1 as @e[type=item, nbt={Item: {tag: {ctc: {id: 'currency_drop', from: 'ep:economy_plus'}}}}] at @s if entity @a[tag=ep.player.init, scores={ep.death=1..}] run function bounty:currency_drop/drop
kill @e[type=item, nbt={Item: {tag: {ctc: {id: 'currency_drop', from: 'ep:economy_plus'}}}}]

## Resets all player's bids and auction triggers

# Clears the player's auction
execute as @a run trigger auction set 0

# Clears the player's bids
execute as @a run trigger bid set 0

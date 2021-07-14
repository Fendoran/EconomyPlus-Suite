## Sets the quantity of the item in a shop
function directory:ram/clear
setblock 29999999 255 29999999 oak_sign
execute as @a[tag=ep.player.init] if score @s ep.session = #ep.target_uid ep.owner run loot spawn 29999999 255 29999999 loot directory:entity/player_name
data modify storage ep:memory input_owner set from entity @e[type=item,nbt={Item:{tag:{ep.get_owner:1b}}},limit=1] Item.tag.SkullOwner.Name
kill @e[type=item,nbt={Item:{tag:{ep.get_owner:1b}}},limit=1]
function directory:heap/method/set_owner
setblock 29999999 255 29999999 air

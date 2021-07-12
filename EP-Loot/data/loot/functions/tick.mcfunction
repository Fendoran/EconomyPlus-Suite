## The main ticking function; everything ticks from here
# executor = server

execute if score #ep.money_drop.mobs ep.config = #ep.enum.bool.false ep.state run kill @e[type=item,nbt={Item:{tag:{frloot:1,frtype:"mobs"}}}]
execute if score #ep.money_drop.mobs ep.config = #ep.enum.bool.false ep.state run clear @a gold_nugget{frloot:1,frtype:"mobs"}
execute if score #ep.money_drop.mobs ep.config = #ep.enum.bool.false ep.state run clear @a iron_nugget{frloot:1,frtype:"mobs"}

execute if score #ep.money_drop.wood ep.config = #ep.enum.bool.false ep.state run kill @e[type=item,nbt={Item:{tag:{frloot:1,frtype:"wood"}}}]
execute if score #ep.money_drop.wood ep.config = #ep.enum.bool.false ep.state run clear @a gold_nugget{frloot:1,frtype:"wood"}
execute if score #ep.money_drop.wood ep.config = #ep.enum.bool.false ep.state run clear @a iron_nugget{frloot:1,frtype:"wood"}

execute if score #ep.money_drop.ore ep.config = #ep.enum.bool.false ep.state run kill @e[type=item,nbt={Item:{tag:{frloot:1,frtype:"ore"}}}]
execute if score #ep.money_drop.ore ep.config = #ep.enum.bool.false ep.state run clear @a gold_nugget{frloot:1,frtype:"ore"}
execute if score #ep.money_drop.ore ep.config = #ep.enum.bool.false ep.state run clear @a iron_nugget{frloot:1,frtype:"ore"}

execute if score #ep.money_drop.farming ep.config = #ep.enum.bool.false ep.state run kill @e[type=item,nbt={Item:{tag:{frloot:1,frtype:"farming"}}}]
execute if score #ep.money_drop.farming ep.config = #ep.enum.bool.false ep.state run clear @a gold_nugget{frloot:1,frtype:"farming"}
execute if score #ep.money_drop.farming ep.config = #ep.enum.bool.false ep.state run clear @a iron_nugget{frloot:1,frtype:"farming"}

execute if score #ep.money_drop.fishing ep.config = #ep.enum.bool.false ep.state run kill @e[type=item,nbt={Item:{tag:{frloot:1,frtype:"fishing"}}}]
execute if score #ep.money_drop.fishing ep.config = #ep.enum.bool.false ep.state run clear @a gold_nugget{frloot:1,frtype:"fishing"}
execute if score #ep.money_drop.fishing ep.config = #ep.enum.bool.false ep.state run clear @a iron_nugget{frloot:1,frtype:"fishing"}


execute as @a if data entity @s Inventory[{tag:{frloot:1}}] run function loot:currency_drop/inventory/clear

execute as @e[type=item] if data entity @s Item.tag.loot unless entity @s[nbt={Glowing:1b}] run data merge entity @s {Glowing:1b}

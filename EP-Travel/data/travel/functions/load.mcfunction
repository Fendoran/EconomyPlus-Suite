## The main load function; everything loads from here
# executor = server

# Set up Scoreboards
scoreboard objectives add ep.pre_tp dummy
scoreboard objectives add ep.tp_cooldown dummy
scoreboard objectives add ep.tp_cooldown1 dummy
scoreboard objectives add ep.tp_cooldown2 dummy
scoreboard objectives add ep.tp_cooldown3 dummy
scoreboard objectives add ep.tp_cooldown4 dummy

scoreboard objectives add travel trigger {"text": "Travel"}

tellraw @a {"text":"EconomyPlus: Travel successfully loaded!","color":"#FFFFFF"}

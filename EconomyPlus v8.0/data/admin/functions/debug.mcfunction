tellraw @a[gamemode=creative] {"text":"The following are different stats and objectives used for debug purposes."}
tellraw @a[gamemode=creative] {"text":"Version: 5.3.0"}
tellraw @a[gamemode=creative] {"text":""}
tellraw @a[gamemode=creative] {"text":"Showing scoreboard stats for entity:"}
tellraw @a[gamemode=creative] {"selector":"@s"}
tellraw @a[gamemode=creative] [{"text":"variable: "},{"score":{"name":"@s","objective":"ep.variable"}}]
tellraw @a[gamemode=creative] [{"text":"config: "},{"score":{"name":"@s","objective":"ep.config"}}]
tellraw @a[gamemode=creative] [{"text":"state: "},{"score":{"name":"@s","objective":"ep.state"}}]
# UID for each player
tellraw @a[gamemode=creative] [{"text":"uid0: "},{"score":{"name":"@s","objective":"ep.uid0"}}]
tellraw @a[gamemode=creative] [{"text":"uid1: "},{"score":{"name":"@s","objective":"ep.uid1"}}]
tellraw @a[gamemode=creative] [{"text":"uid2: "},{"score":{"name":"@s","objective":"ep.uid2"}}]
tellraw @a[gamemode=creative] [{"text":"uid3: "},{"score":{"name":"@s","objective":"ep.uid3"}}]
tellraw @a[gamemode=creative] [{"text":"interact: "},{"score":{"name":"@s","objective":"ep.interact"}}]
tellraw @a[gamemode=creative] [{"text":"time: "},{"score":{"name":"@s","objective":"ep.time"}}]
tellraw @a[gamemode=creative] [{"text":"reset_time: "},{"score":{"name":"@s","objective":"ep.reset_time"}}]
tellraw @a[gamemode=creative] [{"text":"end_time: "},{"score":{"name":"@s","objective":"ep.end_time"}}]

# Money and/or bank objectives
tellraw @a[gamemode=creative] [{"text":"display_money: "},{"score":{"name":"@s","objective":"ep.display_money"}}]
tellraw @a[gamemode=creative] [{"text":"money: "},{"score":{"name":"@s","objective":"ep.money"}}]
tellraw @a[gamemode=creative] [{"text":"bank: "},{"score":{"name":"@s","objective":"ep.bank"}}]
tellraw @a[gamemode=creative] [{"text":"highest_money: "},{"score":{"name":"@s","objective":"ep.highest_money"}}]

# Debt objectives
tellraw @a[gamemode=creative] [{"text":"debt: "},{"score":{"name":"@s","objective":"ep.debt"}}]
tellraw @a[gamemode=creative] [{"text":"debt_state: "},{"score":{"name":"@s","objective":"ep.debt_state"}}]
tellraw @a[gamemode=creative] [{"text":"debt_start: "},{"score":{"name":"@s","objective":"ep.debt_start"}}]
tellraw @a[gamemode=creative] [{"text":"debt_time: "},{"score":{"name":"@s","objective":"ep.debt_time"}}]


# Used in shop setup/use
tellraw @a[gamemode=creative] [{"text":"use: "},{"score":{"name":"@s","objective":"ep.use"}}]
tellraw @a[gamemode=creative] [{"text":"max_use: "},{"score":{"name":"@s","objective":"ep.max_use"}}]
tellraw @a[gamemode=creative] [{"text":"animation: "},{"score":{"name":"@s","objective":"ep.animation"}}]

# TP
tellraw @a[gamemode=creative] [{"text":"pre_tp: "},{"score":{"name":"@s","objective":"ep.pre_tp"}}]
tellraw @a[gamemode=creative] [{"text":"tp_cooldown: "},{"score":{"name":"@s","objective":"ep.tp_cooldown"}}]
tellraw @a[gamemode=creative] [{"text":"tp_cooldown1: "},{"score":{"name":"@s","objective":"ep.tp_cooldown1"}}]
tellraw @a[gamemode=creative] [{"text":"tp_cooldown2: "},{"score":{"name":"@s","objective":"ep.tp_cooldown2"}}]
tellraw @a[gamemode=creative] [{"text":"tp_cooldown3: "},{"score":{"name":"@s","objective":"ep.tp_cooldown3"}}]
tellraw @a[gamemode=creative] [{"text":"tp_cooldown4: "},{"score":{"name":"@s","objective":"ep.tp_cooldown4"}}]

# If the player has actionbar or announcements enabled/disabled
tellraw @a[gamemode=creative] [{"text":"actionbar: "},{"score":{"name":"@s","objective":"ep.actionbar"}}]
tellraw @a[gamemode=creative] [{"text":"announcement: "},{"score":{"name":"@s","objective":"ep.announcement"}}]

# Age of entity
tellraw @a[gamemode=creative] [{"text":"age: "},{"score":{"name":"@s","objective":"ep.age"}}]

# Tax/Interest times
tellraw @a[gamemode=creative] [{"text":"interest_time: "},{"score":{"name":"@s","objective":"ep.interest_time"}}]
tellraw @a[gamemode=creative] [{"text":"tax_time: "},{"score":{"name":"@s","objective":"ep.tax_time"}}]
tellraw @a[gamemode=creative] [{"text":"income: "},{"score":{"name":"@s","objective":"ep.income"}}]

tellraw @a[gamemode=creative] [{"text":"owner: "},{"score":{"name":"@s","objective":"ep.owner"}}]
tellraw @a[gamemode=creative] [{"text":"stored_money: "},{"score":{"name":"@s","objective":"ep.stored_money"}}]

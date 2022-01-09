## Runs when player presses submit button
scoreboard players operation #ep.ui.value ep.variable = @s ep.variable

# Handles the submit buttons for auction
execute if entity @s[tag=ep.dir.auction] run function directory:player/interact/type/submit/auction

# Submit for credit
execute if entity @s[tag=ep.terminal.credit] run function directory:player/command/credit/ui/signal

# Submit for deposit
execute if entity @s[tag=ep.terminal.deposit] run function directory:player/command/deposit/ui/signal

# Loan submit
execute if entity @s[tag=ep.terminal.loan] run function directory:player/command/loan/ui/signal

# Withdraw Submit
execute if entity @s[tag=ep.terminal.withdraw] run function directory:player/command/withdraw/ui/signal

# Pay Submit
execute if entity @s[tag=ep.terminal.pay] run function directory:player/command/pay/ui/signal

# Sell Submits
execute if entity @s[tag=ep.dir.sell] run function directory:player/interact/type/submit/sell

# direct to admin settings if necessary
execute if entity @s[tag=ep.dir.admin] run function directory:player/interact/type/submit/admin_setting

# Submit for autopay
execute if entity @s[tag=ep.terminal.autopay] run function directory:player/command/autopay/ui/signal

# Submit for autopay
execute if entity @s[tag=ep.terminal.autopay.toggle] run function directory:player/command/autopay/toggle/ui/signal

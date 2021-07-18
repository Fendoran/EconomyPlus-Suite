## Signal input from terminal click
execute if entity @s[tag=ep.terminal.autopay.toggle.yes] run tag @p[tag=ep.caster] add ep.debt.autopay
execute if entity @s[tag=ep.terminal.autopay.toggle.no] run tag @p[tag=ep.caster] remove ep.debt.autopay

scoreboard players operation #ep.target_uid ep.session = @s ep.session
function directory:terminal/remove

execute as @a[tag=ep.caster] at @s rotated ~ 0 anchored eyes positioned ^ ^-0.75 ^1.5 run function directory:player/command/autopay/ui/main

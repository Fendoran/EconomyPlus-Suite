tag @s add ep.terminal.button
tag @s add ep.terminal.admin_setting.home.settings.bank.vault.loan
tag @s add ep.dir.admin
tag @s add ep.dir.admin.settings
tag @s add ep.dir.admin.settings.bank
function directory:terminal/constructor/finalize
execute if score #ep.loan.enabled ep.config = #ep.enum.bool.false ep.state run data modify entity @s CustomName set value '[{"text": "Loan", "color": "#C0C0C0"}]'
execute if score #ep.loan.enabled ep.config = #ep.enum.bool.true ep.state run data modify entity @s CustomName set value '[{"text": "Loan", "color": "#ffffff"}]'

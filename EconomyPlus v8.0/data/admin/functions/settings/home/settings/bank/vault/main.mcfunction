function directory:terminal/remove
execute positioned ^ ^0.0 ^ run function admin:settings/home/marker/construct
execute positioned ^ ^0.0 ^ run function admin:settings/home/settings/bank/vault/text/construct
execute positioned ^0 ^-0.3 ^ run function admin:settings/home/settings/bank/vault/vault/construct
execute positioned ^0 ^-0.6 ^ run function admin:settings/home/settings/bank/vault/interest/construct
execute positioned ^0 ^-0.9 ^ run function admin:settings/home/settings/bank/vault/loan/construct
execute positioned ^0 ^-1.2 ^ run function admin:settings/home/settings/bank/vault/tax/construct
execute positioned ^-0.5 ^-2 ^ run function admin:settings/home/construct
execute positioned ^0.5 ^-2 ^ run function admin:settings/home/settings/bank/back/construct

tellraw @p[tag=ep.caster,tag=!ep.ignore.help] [{"text":"\u276cEP\u276d","color":"#D4AF37"}, {"text": " "}, {"text": "Bank settings are about different financial transactions.  Vault is the money stored in the main bank (displayed in the bank floater), Interest deals with interest from money in the bank, Loan works with loan settings, and Tax edits the tax settings.", "color": "#ffffff"}]

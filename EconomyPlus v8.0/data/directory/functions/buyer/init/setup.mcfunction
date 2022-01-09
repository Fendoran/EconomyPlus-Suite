## Ran once player clicks sign, verifies that player has a valid item in hand
execute if data entity @s SelectedItem.Count unless data entity @s SelectedItem.tag.ctc.untradable run function directory:buyer/init/setup/success
execute if score #ep.success ep.variable = #ep.enum.bool.false ep.state run function directory:buyer/init/setup/fail

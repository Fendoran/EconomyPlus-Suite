execute if data entity @s SelectedItem.Count unless data entity @s SelectedItem.tag.ctc.untradable run function directory:seller/init/setup/success
execute if score #ep.success ep.variable = #ep.enum.bool.false ep.state run function directory:seller/init/setup/fail

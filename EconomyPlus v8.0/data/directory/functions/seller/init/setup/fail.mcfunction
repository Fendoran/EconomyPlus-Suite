execute unless data entity @s SelectedItem.Count run function directory:shop/message/empty_hand
execute if data entity @s SelectedItem.Count if data entity @s SelectedItem.tag.ctc.untradable run function directory:shop/message/untradable

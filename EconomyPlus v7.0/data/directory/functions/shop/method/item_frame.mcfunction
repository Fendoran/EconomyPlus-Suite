## Verifies the item frame, as well as ensures that it meets requirements
execute as @e[type=item_frame,distance=...05,tag=!ep.item_frame.init,nbt=!{Item:{}},limit=1,sort=nearest] run function directory:shop/method/item_frame/init
execute if entity @e[type=item_frame,distance=...05,tag=ep.item_frame.init,limit=1,sort=nearest] run function directory:shop/method/item_frame/test

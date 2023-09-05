############################################################
# Ticks a living entity with a wandering trader base
############################################################

item replace entity @s weapon.mainhand with minecraft:leather_horse_armor
data modify entity @s[tag=!srn.trader_entity.no_head] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.head
data modify entity @s[tag=!srn.attacking] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.idle
data modify entity @s[tag=!srn.attacking,tag=!srn.trader_entity.static,predicate=srn:entity/moving] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.moving
data modify entity @s[tag=srn.attacking] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.attacking

execute if entity @s[nbt=!{HurtTime:0s}] run function srn:entity/trader_entity/hurt/main

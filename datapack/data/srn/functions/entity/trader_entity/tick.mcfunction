############################################################
# Ticks a living entity with a wandering trader base
############################################################

item replace entity @s weapon.mainhand with minecraft:leather_horse_armor{display:{color:0}}
# Body Idle Model
data modify entity @s[tag=!srn.trader_entity.attacking] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.idle
# Body Moving Model
data modify entity @s[tag=!srn.trader_entity.attacking,tag=!srn.trader_entity.static,predicate=srn:entity/moving] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.moving
# Body Attacking Model
data modify entity @s[tag=srn.trader_entity.attacking] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.srn.custom_model_data.attacking

execute if entity @s[nbt=!{HurtTime:0s}] run function srn:entity/trader_entity/hurt/main
execute if entity @s[nbt={HurtTime:0s},tag=srn.trader_entity.hurt] run function srn:entity/trader_entity/hurt/stop

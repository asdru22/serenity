############################################################
# Repairs items in the proper order as intensrn
############################################################

# Set proper values for the amount thead_equipment the item should be repaired
scoreboard players set #item_durability_change srn.dummy 2
scoreboard players operation #item_durability_change srn.dummy *= @s srn.old_xp

# Repair items in the proper order
execute if entity @s[predicate=srn:entity/holding/mending_item/mainhand] run function srn:item/durability/slots/mainhand
execute if entity @s[predicate=!srn:entity/holding/mending_item/mainhand,predicate=srn:entity/holding/mending_item/offhand] run function srn:item/durability/slots/offhand
execute if entity @s[predicate=!srn:entity/holding/mending_item/mainhand,predicate=!srn:entity/holding/mending_item/offhand,predicate=srn:entity/holding/mending_item/head] run function srn:item/durability/slots/head

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change srn.dummy /= #2 srn.dummy
function srn:item/durability/mending/xp_subtraction_loop

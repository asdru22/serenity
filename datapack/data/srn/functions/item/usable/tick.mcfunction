execute if predicate srn:entity/holding/windup_crossbow run function srn:item/windup_crossbow/charging/tick

function #srn:item/usable/tick

execute if score @s srn.using_item = @s srn.using_item_new run function srn:item/usable/release

scoreboard players operation @s srn.using_item_new = @s srn.using_item
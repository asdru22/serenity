execute if entity @s[scores={srn.used_warped_fungus_on_a_stick=1..}] run function srn:item/warped_fungus_on_a_stick/use

execute if predicate srn:entity/holding/mending_item/any positioned ~ ~0.805 ~ run function srn:item/durability/mending/xp_orb_test/main

execute if score @s srn.using_item matches 1.. run function srn:item/usable/tick

execute if predicate srn:entity/using_custom_tool run function srn:item/durability/use_tool/tick

execute if score @s srn.leave_game matches 1.. run function srn:entity/player/preserve_scoreboards/init

execute if score @s srn.used_item_frame matches 1.. run function srn:entity/item_frame/init
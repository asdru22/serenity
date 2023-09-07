execute if entity @s[scores={srn.used_warped_fungus_on_a_stick=1..}] run function srn:item/warped_fungus_on_a_stick/use

execute if predicate srn:entity/holding/mending_item/any positioned ~ ~0.805 ~ run function srn:item/durability/mending/xp_orb_test/main

execute if score @s srn.using_item matches 1.. run function srn:item/usable/tick
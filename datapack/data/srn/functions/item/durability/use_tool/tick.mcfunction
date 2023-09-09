data modify storage srn:storage root.temp.item set from entity @s SelectedItem
execute if predicate srn:entity/holding/custom_tool run function srn:item/durability/use_tool/use
scoreboard players reset @s srn.used_diamond_axe
scoreboard players reset @s srn.used_diamond_pickaxe
scoreboard players reset @s srn.used_diamond_hoe
scoreboard players reset @s srn.used_diamond_shovel
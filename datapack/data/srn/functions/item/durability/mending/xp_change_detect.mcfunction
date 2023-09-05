############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s srn.old_xp -= @s srn.current_xp
tag @s remove srn.saw_xp_orb
execute if score @s srn.old_xp matches ..-1 run function srn:item/durability/mending/repair_priority_list
scoreboard players reset @s srn.old_xp

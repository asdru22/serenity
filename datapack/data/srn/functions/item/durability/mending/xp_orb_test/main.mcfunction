############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!smithed.entity] run tag @s add srn.tag
execute if entity @s[tag=!srn.saw_xp_orb,tag=srn.tag] run function srn:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=srn.saw_xp_orb,tag=!srn.tag] run function srn:item/durability/mending/xp_change_detect
tag @s remove srn.tag
############################################################
# Commands to run only if HurtTime is 9s
############################################################

execute if entity @s[tag=!srn.silent] run function srn:entity/trader_entity/sounds/hurt with entity @s ArmorItems[3].srn.sounds

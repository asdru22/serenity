############################################################
# Where were you when trader entity was kil?
############################################################

execute as @e[type=item,tag=!smithed.entity,nbt={Item:{tag:{srn:{id:"death_item"}}}}] at @s run function srn:entity/trader_entity/death/effects

############################################################
# Schedules stuff to execute off of loot item
############################################################

schedule function srn:entity/trader_entity/death/find_item 1t append
advancement revoke @s only srn:player_killed_entity/trader_entity

############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 srn.dummy run data get storage srn:storage root.temp.item.tag.srn.durability[0] 1
execute store result score #temp_1 srn.dummy run data get storage srn:storage root.temp.item.tag.srn.durability[1] 1
scoreboard players operation #temp_0 srn.dummy -= #temp_1 srn.dummy
execute if score #item_durability_change srn.dummy < #temp_0 srn.dummy run scoreboard players operation #item_durability_change srn.dummy = #temp_0 srn.dummy

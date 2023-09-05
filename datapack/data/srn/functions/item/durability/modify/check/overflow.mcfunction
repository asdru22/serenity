############################################################
# Checks if the item's durability is either going to go over the maximum or under the minimum (break)
############################################################

# Prevent the adsrn durability amount from overflowing the maximum value by setting it to the maximum repair value
execute if score #item_durability_change srn.dummy matches ..-1 run function srn:item/durability/modify/check/set_max

# Find out the new durability of the item (USED IN LATER FUNCTIONS AS WELL)
execute store result score @s srn.dummy run data get storage srn:storage root.temp.item.tag.srn.durability[0] 1
scoreboard players operation @s srn.dummy -= #item_durability_change srn.dummy

# If the durability is less than 0, break the item
execute if entity @s[scores={srn.dummy=..0}] run function srn:item/durability/modify/break with storage srn:storage root.temp.item

# If the durability is more than 0, modify the durability of the item
execute if entity @s[scores={srn.dummy=1..}] run function srn:item/durability/modify/change_item_data
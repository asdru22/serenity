############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage srn:storage root.temp.item.tag.srn.durability[0] int 1 run scoreboard players get @s srn.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s srn.dummy2 run data get storage srn:storage root.temp.item.tag.srn.durability[1] 1
data modify storage srn:storage root.temp.item.tag.srn.repaired set value 0b
execute if score @s srn.dummy = @s srn.dummy2 run data modify storage srn:storage root.temp.item.tag.srn.repaired set value 1b

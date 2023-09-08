############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage srn:storage root.temp
data modify storage srn:storage root.temp.item set from entity @s item

# Sets the item's data in storage
function srn:item/durability/modify/main
execute unless data storage srn:storage root.temp.item run item replace entity @s container.0 with air
item modify entity @s container.0 srn:durability_lore
data modify storage srn:storage root.temp.item set from entity @s item
data modify storage srn:storage root.temp.item.tag.display.Lore[-3] set from storage srn:storage root.temp.item.tag.display.Lore[-1]
data remove storage srn:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s container.0 srn:copy_nbt

############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage srn:storage root.temp
data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:101b}]

# Sets the item's data in storage
function srn:item/durability/modify/main
execute unless data storage srn:storage root.temp.item run item replace entity @s armor.legs with air
item modify entity @s armor.legs srn:durability_lore
data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:101b}]
data modify storage srn:storage root.temp.item.tag.display.Lore[-3] set from storage srn:storage root.temp.item.tag.display.Lore[-1]
data remove storage srn:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s armor.legs srn:copy_nbt

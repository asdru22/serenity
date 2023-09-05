############################################################
# Commands to run if the item breaks
############################################################
playsound minecraft:entity.item.break player @a[distance=..16]
data modify storage srn:storage root.temp.item.CustomModelData set from storage srn:storage root.temp.item.tag.CustomModelData
function srn:item/durability/modify/particles with storage srn:storage root.temp.item
data remove storage srn:storage root.temp.item
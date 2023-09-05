############################################################
# Damages an item using scoreboards
############################################################

# If the item is taking positive durability (damage), check unbreaking
execute if score #item_durability_change srn.dummy matches 1.. run function srn:item/durability/modify/check/unbreaking

# If the item is taking negative durability (mending), skip unbreaking checks
execute if score #item_durability_change srn.dummy matches ..-1 run function srn:item/durability/modify/check/overflow

############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage srn:storage root.temp.item.id set value "minecraft:lingering_potion"
data modify storage srn:storage root.temp.item.tag.HideFlags set value 32

function #srn:block/brewing_stand/make_lingering
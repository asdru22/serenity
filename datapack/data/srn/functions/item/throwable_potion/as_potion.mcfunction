function srn:technical/string_uuid/init
data modify storage srn:storage root.temp.potion.id set from entity @s Item.id
data modify storage srn:storage root.temp.potion.color set from entity @s Item.tag.CustomPotionColor
data modify storage srn:storage root.temp.potion.potion set from entity @s Item.tag.srn.potion.id

execute summon marker run function srn:item/throwable_potion/as_marker with storage srn:storage root.temp
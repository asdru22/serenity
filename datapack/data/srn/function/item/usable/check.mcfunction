execute if items entity @s weapon.mainhand *[custom_data~{srn:{usable:true}}] run return run data modify storage srn:storage root.temp.item set from entity @s SelectedItem
execute if items entity @s weapon.offhand *[custom_data~{srn:{usable:true}}] run data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
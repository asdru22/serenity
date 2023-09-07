advancement revoke @s only srn:inventory_changed/head_equipment_equip
stopsound @s master minecraft:item.armor.equip_leather
playsound minecraft:item.armor.equip_leather player @a[distance=..16]
data modify storage srn:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.head loot srn:copy_nbt/warped_fungus_on_a_stick
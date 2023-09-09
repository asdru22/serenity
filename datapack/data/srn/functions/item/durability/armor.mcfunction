execute if predicate srn:entity/wearing/custom_helmet run function srn:item/durability/damage_generic_amount/head_1
execute if predicate srn:entity/wearing/custom_chestplate run function srn:item/durability/damage_generic_amount/chest_1
execute if predicate srn:entity/wearing/custom_leggings run function srn:item/durability/damage_generic_amount/legs_1
execute if predicate srn:entity/wearing/custom_boots run function srn:item/durability/damage_generic_amount/feet_1

advancement revoke @s only srn:entity_hurt_player/armor_durability
advancement revoke @s only srn:entity_killed_player/armor_durability

stopsound @s * minecraft:item.armor.equip_leather
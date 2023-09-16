execute if entity @s[tag=!srn.silent] run function srn:entity/trader_entity/sounds/hurt with entity @s ArmorItems[3].srn.sounds
data modify entity @s[tag=!srn.trader_entity.no_head] ArmorItems[3].tag.display.color set value 1

tag @s add srn.trader_entity.hurt
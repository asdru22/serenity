data modify entity @s[tag=!srn.trader_entity.no_head] ArmorItems[3].tag.display.color set value 0
execute store result score #color srn.dummy run data get entity @s HandItems[0].tag.display.color
execute store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players remove #color srn.dummy 1

tag @s remove srn.trader_entity.hurt
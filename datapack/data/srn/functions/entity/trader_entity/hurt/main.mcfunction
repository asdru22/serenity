############################################################
# Creates hurt color and noises
############################################################

execute if entity @s[nbt={HurtTime:9s}] run function srn:entity/trader_entity/hurt/9s

execute store result score #color srn.dummy run data get entity @s HandItems[0].tag.display.color
execute store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players add #color srn.dummy 1
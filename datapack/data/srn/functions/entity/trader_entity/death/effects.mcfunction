############################################################
# Where were you when trader entity was kil?
############################################################

particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon experience_orb ~ ~ ~ {Value:2s}
summon experience_orb ~ ~ ~ {Value:1s}
function srn:entity/trader_entity/sounds/death with entity @s Item.tag.srn.sounds
kill @s

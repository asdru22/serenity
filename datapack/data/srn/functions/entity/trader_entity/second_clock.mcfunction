############################################################
# Second-clocks a living entity with a wandering trader base
############################################################

data modify entity @s DespawnDelay set value 2147483647
data remove entity @s[tag=!srn.has_trades] Offers.Recipes
data modify entity @s[nbt=!{NoAI:1b},predicate=srn:entity/wandering_trader_night,nbt=!{DeathTime:0s}] DeathTime set value 0s
data modify entity @s[nbt=!{NoAI:1b},predicate=!srn:entity/wandering_trader_night,nbt=!{DeathTime:19s}] DeathTime set value 19s
data modify entity @s[nbt=!{NoAI:1b}] HandItems[0].tag.fix_milk_bucket set value "funny"
execute if entity @s[predicate=srn:chance/3_20,tag=!srn.silent] run function srn:entity/trader_entity/sounds/ambient with entity @s ArmorItems[3].srn.sounds

scoreboard objectives add srn.dummy dummy
scoreboard objectives add srn.dummy2 dummy

scoreboard objectives add srn.old_xp dummy

scoreboard objectives add srn.using_item dummy
scoreboard objectives add srn.using_item_new dummy
scoreboard objectives add srn.current_xp xp

scoreboard objectives add srn.used_warped_fungus_on_a_stick used:warped_fungus_on_a_stick

execute positioned 3000000 ~ 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{Count:1b,id:"minecraft:stone",Slot:0b}]}

function srn:entity/natural_spawning/timer
function srn:technical/timers/second

execute unless score $mob_cap srn.dummy matches -2147483648..2147483647 run scoreboard players set $mob_cap srn.dummy 0

scoreboard players set #100 srn.dummy 100
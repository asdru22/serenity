scoreboard objectives add srn.dummy dummy

execute positioned 3000000 ~ 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{Count:1b,id:"minecraft:stone",Slot:0b}]}

function srn:entity/natural_spawning/timer

execute unless score $mob_cap srn.dummy matches -2147483648..2147483647 run scoreboard players set $mob_cap srn.dummy 0
# store original pos + offset
execute store result score #x srn.dummy run scoreboard players operation #x srn.dummy2 += #x_speed srn.dummy2
execute store result score #y srn.dummy run scoreboard players operation #y srn.dummy2 += #y_speed srn.dummy2
execute store result score #z srn.dummy run scoreboard players operation #z srn.dummy2 += #z_speed srn.dummy2

#offset x
execute store result score #rand srn.dummy run random value -50..50
execute store result storage srn:storage root.temp.pos[0] double 0.01 run scoreboard players operation #x srn.dummy += #rand srn.dummy
#offset y
execute store result score #rand srn.dummy run random value -50..50
execute store result storage srn:storage root.temp.pos[1] double 0.01 run scoreboard players operation #y srn.dummy += #rand srn.dummy
#offset z
execute store result score #rand srn.dummy run random value -50..50
execute store result storage srn:storage root.temp.pos[2] double 0.01 run scoreboard players operation #z srn.dummy += #rand srn.dummy
#update pos
data modify entity @s Pos set from storage srn:storage root.temp.pos
#raycast
execute facing entity @s feet run function srn:lightning/light_loop
# iterate
scoreboard players remove #loop srn.dummy 1
execute if score #loop srn.dummy matches 1.. at @s run function srn:lightning/loop
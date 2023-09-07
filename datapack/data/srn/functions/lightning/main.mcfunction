# get pos of entity
data modify storage srn:storage root.temp.pos set from entity @s Pos
execute store result score #x2 srn.dummy store result score #x srn.dummy2 run data get storage srn:storage root.temp.pos[0] 100
execute store result score #y2 srn.dummy store result score #y srn.dummy2 run data get storage srn:storage root.temp.pos[1] 100
execute store result score #z2 srn.dummy store result score #z srn.dummy2 run data get storage srn:storage root.temp.pos[2] 100
# get offset vector
execute facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage srn:storage root.temp.vector set from entity @s Pos
# get speed from offset
execute store result score #x_speed srn.dummy2 run data get storage srn:storage root.temp.vector[0] -100
execute store result score #y_speed srn.dummy2 run data get storage srn:storage root.temp.vector[1] -100
execute store result score #z_speed srn.dummy2 run data get storage srn:storage root.temp.vector[2] -100

# get pos of execution context??
teleport @s ~ ~ ~
data modify storage srn:storage root.temp.pos_end set from entity @s Pos
execute store result score #x srn.dummy run data get storage srn:storage root.temp.pos_end[0] 100
execute store result score #y srn.dummy run data get storage srn:storage root.temp.pos_end[1] 100
execute store result score #z srn.dummy run data get storage srn:storage root.temp.pos_end[2] 100
# distance via sqrt
tellraw @p "----------"
tellraw @p ["#x: ",{"score":{"name": "#x","objective": "srn.dummy"}}]
tellraw @p ["#y: ",{"score":{"name": "#y","objective": "srn.dummy"}}]
tellraw @p ["#z: ",{"score":{"name": "#z","objective": "srn.dummy"}}]
tellraw @p ["#x2: ",{"score":{"name": "#x2","objective": "srn.dummy"}}]
tellraw @p ["#y2: ",{"score":{"name": "#y2","objective": "srn.dummy"}}]
tellraw @p ["#z2: ",{"score":{"name": "#z2","objective": "srn.dummy"}}]
execute store result storage srn:storage root.temp.sqrt.x float 1 run scoreboard players operation #x srn.dummy -= #x2 srn.dummy
execute store result storage srn:storage root.temp.sqrt.y float 1 run scoreboard players operation #y srn.dummy -= #y2 srn.dummy
execute store result storage srn:storage root.temp.sqrt.z float 1 run scoreboard players operation #z srn.dummy -= #z2 srn.dummy

function srn:technical/math/sqrt with storage srn:storage root.temp.sqrt
execute store result score #loop srn.dummy run data get entity @s transformation.scale[0] 0.01
# go back to original position
data modify entity @s Pos set from storage srn:storage root.temp.pos

execute if score #loop srn.dummy matches 1.. at @s run function srn:lightning/loop

kill @s
execute as @e[type=potion,sort=nearest,limit=1,distance=..3,nbt={Item:{tag:{srn:{id:"potion"}}}}] unless predicate srn:entity/has_passenger at @s run function srn:item/throwable_potion/as_potion

scoreboard players reset @s srn.throw_lingering_potion
scoreboard players reset @s srn.throw_splash_potion
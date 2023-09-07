$data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]

#$say x:$(x),y:$(y),z:$(z)
#tellraw @p {"nbt":"transformation.scale[0]","entity":"@s"}
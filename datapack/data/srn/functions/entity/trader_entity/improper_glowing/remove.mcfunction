############################################################
# Removes glowing from certain wandering traders when it's applied
############################################################

effect clear @e[type=minecraft:wandering_trader,tag=srn.cannot_glow,limit=1,nbt={HurtTime:10s}] minecraft:glowing

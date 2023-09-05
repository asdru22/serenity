execute if entity @s[advancements={srn:interaction={attack=true}}] as @e[tag=srn.dummyeraction,type=interaction,distance=..10] if data entity @s attack run function srn:entity/interaction/attack
execute if entity @s[advancements={srn:interaction={interact=true}}] as @e[tag=srn.dummyeraction,type=interaction,distance=..10] if data entity @s interaction run function srn:entity/interaction/interact
advancement revoke @s only srn:interaction

execute if entity @s[tag=!marked] run return fail

particle angry_villager ~ ~ ~ 1 1 1 5 50 force

tag @s remove marked

effect clear @s

playsound ambient.cave player @s ~ ~ ~ 1 1 1
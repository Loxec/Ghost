execute if entity @s[tag=ghost] run function ghost:return_human_fghost
execute if entity @s[tag=vulnerable_ghost] run function ghost:return_human_fvghost

tag @s add weak

tellraw @s {"text":"You are weak, eat some food","color":"red"}
playsound minecraft:event.mob_effect.bad_omen master @s ~ ~ ~ 1 1

scoreboard players operation @s weak_time_sec = @s const-weak_time_sec
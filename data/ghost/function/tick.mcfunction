#tick

scoreboard players set @a const-max_weak_time 2400
scoreboard players set @a const-weak_time_sec 120
scoreboard players set @a const-marker_processing_range 20

execute store result storage ghost:config marker_range int 1 run scoreboard players get @r const-marker_processing_range

execute as @a at @s run function ghost:process_nearby_marker with storage ghost:config

execute as @a[tag=!ghost,tag=!vulnerable_ghost,tag=!weak] at @s if items entity @s armor.chest minecraft:leather_chestplate[minecraft:enchantments={"ghost:curse_of_sacrifice":1}] run function ghost:sacrifice/as_sacrified
execute as @a[tag=temp-transforming] at @s run function ghost:sacrifice/as_transforming

execute as @a[tag=ghost] at @s run function ghost:ghost/as_ghost

execute as @a[scores={death_count=1..},tag=!ghost,tag=vulnerable_ghost] at @s run function ghost:as_death_count_up
execute as @a[scores={death_count=1..},tag=ghost] at @s run function ghost:vulnerable_ghost/become_vulnerable_ghost
execute as @a[scores={death_count=1..},tag=ghost] at @s run scoreboard players set @s death_count 0


execute as @a[tag=vulnerable_ghost,tag=ghost] at @s run tag @s remove ghost 
execute as @a[tag=vulnerable_ghost] at @s run function ghost:vulnerable_ghost/as_vulnerable_ghost

execute as @a[tag=weak] at @s rotated as @s run function ghost:as_weak

execute as @a[tag=temp-use_food] at @s run function ghost:as_temp-use_food

execute as @a[tag=!given] at @s run function ghost:give_book_of_rituals
execute as @a[tag=!given] at @s run tag @s add given

scoreboard players set @a[tag=!weak] weak_duration 0
scoreboard players set @a[tag=!weak] weak_time 0
scoreboard players set @a[tag=!weak] weak_time_sec 0
scoreboard players set @a[tag=!weak] weak_sec_accumulator 0

scoreboard players add @a[tag=weak] weak_duration 1
scoreboard players add @a[tag=weak] weak_sec_accumulator 1
execute as @a[tag=weak,scores={weak_duration=2400}] at @s run function ghost:heal

execute as @a[scores={use_carrot_on_a_stick=1..}] at @s run function ghost:check_carrot_on_a_stick
title @s actionbar [{"bold":true,"color":"white","text":"Still "},{"bold":true,"color":"red","score":{"name":"@s","objective":"weak_time_sec"}},{"bold":true,"color":"white","text":" seconds before healing."}]

effect give @s weakness 1 2 true
effect give @s slowness 1 2 true
effect give @s mining_fatigue 1 2 true

scoreboard players operation @s weak_time = @s const-max_weak_time
scoreboard players operation @s weak_time -= @s weak_duration

execute if score @s weak_sec_accumulator matches 20.. run scoreboard players remove @s weak_time_sec 1
execute if score @s weak_sec_accumulator matches 20.. run scoreboard players set @s weak_sec_accumulator 0
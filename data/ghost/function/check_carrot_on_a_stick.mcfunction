scoreboard players set @s use_carrot_on_a_stick 0

execute if items entity @s weapon.* carrot_on_a_stick[minecraft:custom_data={holy_wand:1b}] run function ghost:used_holy_wand
execute if items entity @s weapon.* carrot_on_a_stick[minecraft:custom_data={hell_rod:1b}] run function ghost:used_hell_rod
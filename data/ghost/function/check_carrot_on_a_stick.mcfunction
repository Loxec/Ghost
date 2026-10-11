scoreboard players set @s use_carrot_on_a_stick 0

execute if items entity @s weapon.* carrot_on_a_stick[minecraft:custom_data={wand_of_concentration:1b}] run function ghost:used_wand_of_concentration
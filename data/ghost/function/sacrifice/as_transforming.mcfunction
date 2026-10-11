setblock ~ ~ ~ golden_dandelion
setblock ~ ~-1 ~ grass_block
setblock ~1 ~-1 ~ sand
setblock ~-1 ~-1 ~ sand
setblock ~ ~-1 ~1 sand
setblock ~ ~-1 ~-1 sand
setblock ~-1 ~-1 ~-1 obsidian
setblock ~1 ~-1 ~-1 obsidian
setblock ~-1 ~-1 ~1 obsidian
setblock ~1 ~-1 ~1 obsidian
setblock ~1 ~ ~ lantern
setblock ~-1 ~ ~ lantern
setblock ~ ~ ~1 lantern
setblock ~ ~ ~-1 lantern
tag @s remove temp-transforming
item replace entity @s armor.chest with air
function ghost:ghost/become_ghost
summon lightning_bolt
weather rain
effect give @s darkness 5 255 true
tellraw @s {"text":"Welcome to the spirit world, mortal.\n You have been transformed into a ghost. Your journey begins now.","color":"#e066c5"}
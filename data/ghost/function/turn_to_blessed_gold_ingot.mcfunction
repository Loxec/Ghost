tag @s add blessed_gold_ingot

data merge entity @s {Item:{components:{"minecraft:custom_name":"Blessed Gold Ingot","minecraft:custom_data":{blessed_gold_ingot:1b}}}}

data merge entity @s {Item:{components:{"minecraft:enchantments":{"ghost:marking":1}}}}

setblock ~ ~-1 ~ yellow_concrete replace
setblock ~1 ~-1 ~ red_concrete replace
setblock ~-1 ~-1 ~ red_concrete replace
setblock ~ ~-1 ~1 red_concrete replace
setblock ~ ~-1 ~-1 red_concrete replace
setblock ~1 ~-1 ~1 yellow_concrete replace
setblock ~-1 ~-1 ~1 yellow_concrete replace
setblock ~1 ~-1 ~-1 yellow_concrete replace
setblock ~-1 ~-1 ~-1 yellow_concrete replace

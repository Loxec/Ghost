# tick(tick.mcfunction)

$execute as @e[type=marker,distance=..$(marker_range)] at @s unless block ~ ~ ~ lapis_block run kill @s

$execute as @e[type=marker,distance=..$(marker_range)] at @s unless entity @n[type=minecraft:glow_item_frame,distance=..1,nbt={Item:{components:{"minecraft:enchantments":{"ghost:cursing":1}},id:"minecraft:echo_shard"}}] run kill @s

$execute as @e[type=marker,distance=..$(marker_range)] at @s if block ~ ~ ~ lapis_block if entity @n[type=minecraft:glow_item_frame,distance=..1,nbt={Item:{components:{"minecraft:enchantments":{"ghost:cursing":1}},id:"minecraft:echo_shard"}}] run execute as @a[tag=ghost,distance=..$(marker_range)] at @s run damage @s 5 magic by @s

$execute as @e[type=marker,distance=..$(marker_range)] at @s if block ~ ~ ~ lapis_block if entity @n[type=minecraft:glow_item_frame,distance=..1,nbt={Item:{components:{"minecraft:enchantments":{"ghost:cursing":1}},id:"minecraft:echo_shard"}}] run execute as @a[tag=vulnerable_ghost,distance=..$(marker_range)] at @s run damage @s 2 magic by @s

$execute as @e[type=marker,distance=..$(marker_range)] at @s run particle end_rod ~ ~ ~ 0 1 0 0.1 1 force
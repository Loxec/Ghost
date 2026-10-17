execute if entity @s[tag=revenant] run tag @s add marked

execute if entity @s[tag=!revenant] run return fail

effect give @s darkness 5 5 true
effect give @s slowness 5 5 true


function ghost:become_weak

tellraw @s {"text":"You are now marked by the god","color":"gold"}

advancement grant @s only ghost:ghost/no_more_ghost
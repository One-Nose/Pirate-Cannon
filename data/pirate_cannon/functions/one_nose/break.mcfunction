execute as @e[tag=one_nose_pirate_cannon_main] at @s unless block ~ ~1 ~ #minecraft:stairs run tag @s add one_nose_pirate_cannon_broken

execute at @e[tag=one_nose_pirate_cannon_broken] run kill @e[tag=one_nose_pirate_cannon_front,sort=nearest,limit=1]
execute at @e[tag=one_nose_pirate_cannon_broken] run kill @e[tag=one_nose_pirate_cannon,sort=nearest,limit=2]

execute at @e[tag=one_nose_pirate_cannon_broken] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:gunpowder"}}
execute at @e[tag=one_nose_pirate_cannon_broken] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:iron_block"}}

kill @e[tag=one_nose_pirate_cannon_broken]

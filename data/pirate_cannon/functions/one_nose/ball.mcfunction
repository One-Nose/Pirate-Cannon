execute at @e[tag=one_nose_pirate_cannon_ball] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.01 1

tag @e remove one_nose_pirate_cannon_air
execute as @e[tag=one_nose_pirate_cannon_ball,nbt={OnGround:0b}] at @s positioned ~ ~0.5 ~ if block ~-0.2 ~ ~ minecraft:air if block ~0.2 ~ ~ minecraft:air if block ~ ~0.2 ~ minecraft:air if block ~ ~-0.2 ~ minecraft:air if block ~ ~ ~0.2 minecraft:air if block ~ ~ ~-0.2 minecraft:air run tag @s add one_nose_pirate_cannon_air

execute at @e[tag=one_nose_pirate_cannon_ball,tag=!one_nose_pirate_cannon_air] run summon minecraft:tnt
kill @e[tag=one_nose_pirate_cannon_ball,tag=!one_nose_pirate_cannon_air]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",Count:1b}},distance=..1] positioned ~ ~-0.3 ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:stairs[half=bottom,shape=straight,waterlogged=false] unless entity @e[tag=one_nose_pirate_cannon_main,distance=..3.6] run tag @s add one_nose_pirate_cannon_make
execute at @e[tag=one_nose_pirate_cannon_make] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",Count:1b}},distance=..1,limit=1]

execute at @e[tag=one_nose_pirate_cannon_make] positioned ~ ~-0.3 ~ align xyz if block ~ ~ ~ #minecraft:stairs[facing=north] run function pirate_cannon:one_nose/make_north
execute at @e[tag=one_nose_pirate_cannon_make] positioned ~ ~-0.3 ~ align xyz if block ~ ~ ~ #minecraft:stairs[facing=south] run function pirate_cannon:one_nose/make_south
execute at @e[tag=one_nose_pirate_cannon_make] positioned ~ ~-0.3 ~ align xyz if block ~ ~ ~ #minecraft:stairs[facing=east] run function pirate_cannon:one_nose/make_east
execute at @e[tag=one_nose_pirate_cannon_make] positioned ~ ~-0.3 ~ align xyz if block ~ ~ ~ #minecraft:stairs[facing=west] run function pirate_cannon:one_nose/make_west

kill @e[tag=one_nose_pirate_cannon_make]

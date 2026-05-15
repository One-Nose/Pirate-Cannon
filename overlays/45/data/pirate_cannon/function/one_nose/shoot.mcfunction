execute \
    as @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_main] at @s \
    positioned ~ ~1 ~ \
    if entity @e[ \
        type=minecraft:item, \
        nbt={ Item: { id: "minecraft:tnt", count: 1 } }, \
        distance=..1] \
    run tag @s add one_nose_pirate_cannon_shooting

execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    positioned ~ ~1 ~ \
    run kill @e[ \
        type=minecraft:item, \
        nbt={ Item: { id: "minecraft:tnt", count: 1 } }, \
        distance=..1]

execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    run playsound minecraft:entity.dragon_fireball.explode \
        block @a[distance=..64] ~ ~ ~


execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    if block ~ ~1 ~ #minecraft:stairs[facing=north] \
    at @n[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_front] \
    run summon minecraft:armor_stand ~ ~ ~ { \
        Motion: [ 0d, 0.9d, -4.5d ], \
        Small: 1b, \
        Invisible: 1b, \
        ArmorItems: [ {}, {}, {}, { \
            id: "minecraft:player_head", \
            components: { "minecraft:profile": { \
                id: [I; -639877664, 1727545686, -2004029853, -632720288 ], \
                properties: [ { \
                    name: "textures", \
                    value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19" } ] } } } ], \
        Tags: [ "one_nose_pirate_cannon_ball" ] }

execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    if block ~ ~1 ~ #minecraft:stairs[facing=south] \
    at @n[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_front] \
    run summon minecraft:armor_stand ~ ~ ~ { \
        Motion: [ 0d, 0.9d, 4.5d ], \
        Small: 1b, \
        Invisible: 1b, \
        ArmorItems: [ {}, {}, {}, { \
            id: "minecraft:player_head", \
            components: { "minecraft:profile": { \
                id: [I; -639877664, 1727545686, -2004029853, -632720288 ], \
                properties: [ { \
                    name: "textures", \
                    value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19" } ] } } } ], \
        Tags: [ "one_nose_pirate_cannon_ball" ] }

execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    if block ~ ~1 ~ #minecraft:stairs[facing=east] \
    at @n[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_front] \
    run summon minecraft:armor_stand ~ ~ ~ { \
        Motion: [ 4.5d, 0.9d, 0d ], \
        Small: 1b, \
        Invisible: 1b, \
        ArmorItems: [ {}, {}, {}, { \
            id: "minecraft:player_head", \
            components: { "minecraft:profile": { \
                id: [I; -639877664, 1727545686, -2004029853, -632720288 ], \
                properties: [ { \
                    name: "textures", \
                    value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19" } ] } } } ], \
        Tags: [ "one_nose_pirate_cannon_ball" ] }

execute \
    at @e[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_shooting] \
    if block ~ ~1 ~ #minecraft:stairs[facing=west] \
    at @n[type=minecraft:armor_stand, tag=one_nose_pirate_cannon_front] \
    run summon minecraft:armor_stand ~ ~ ~ { \
        Motion: [ -4.5d, 0.9d, 0d], \
        Small: 1b, \
        Invisible: 1b, \
        ArmorItems: [ {}, {}, {}, { \
            id: "minecraft:player_head", \
            components: { "minecraft:profile": { \
                id: [I; -639877664, 1727545686, -2004029853, -632720288 ], \
                properties: [ { \
                    name: "textures", \
                    value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19" } ] } } } ], \
        Tags: [ "one_nose_pirate_cannon_ball" ] }


tag @e[type=minecraft:armor_stand] remove one_nose_pirate_cannon_shooting

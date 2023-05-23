effect clear @s levitation
effect give @s slow_falling infinite 0 true

tp ~ ~ ~

scoreboard players set @s DekuFlowerDescentTime 0
scoreboard players set @s DekuFlowerStationaryTime 0

scoreboard players operation @s DekuFlowerLaunchPeak += @e[tag=globals,limit=1] DEKU_FLOWER_EXTRA_HEIGHT

tag @s remove DekuFlowerAscend
tag @s add DekuFlowerDescend
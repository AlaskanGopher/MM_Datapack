effect give @s levitation 100 15 true
execute store result score @s DekuFlowerLaunchPeak run scoreboard players get @s Height
scoreboard players operation @s DekuFlowerLaunchPeak += @e[type=minecraft:marker,tag=globals,limit=1] GOLD_DEKU_FLOWER_LAUNCH_HEIGHT
tag @s add DekuFlowerAscend
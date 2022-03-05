# Not Deku Mask
execute as @e[tag=DekuFlower] at @s if entity @a[distance=1..] run setblock ~ ~ ~ minecraft:coarse_dirt replace

# Deku Mask
execute as @e[tag=DekuFlower] at @s if entity @a[distance=0..1,scores={Sneak=1..},tag=Wearing_Deku_Mask] run tp @a ~ ~0.5 ~
execute as @e[tag=DekuFlower] at @s if entity @a[tag=Wearing_Deku_Mask,scores={Sneak=1..},distance=0..2] run setblock ~ ~ ~ minecraft:spruce_slab replace

execute as @e[tag=DekuFlower] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=1..}] run scoreboard players add @s _DekuFlowerTimer 1

execute as @e[tag=DekuFlower,scores={_DekuFlowerTimer=1..20}] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=1..}] run playsound minecraft:block.nylium.step block @r ~ ~ ~ 0.1 1

execute as @e[tag=DekuFlower,scores={_DekuFlowerTimer=20}] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=1..}] run playsound minecraft:block.beehive.enter block @a ~ ~ ~ 1 1
execute as @e[tag=DekuFlower,scores={_DekuFlowerTimer=40}] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=1..}] run playsound minecraft:block.beehive.enter block @a ~ ~ ~ 1 2

execute as @e[tag=DekuFlower,scores={_DekuFlowerTimer=41..}] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=0}] run tag @a add Float
execute as @e[tag=DekuFlower,tag=GoldDekuFlower,scores={_DekuFlowerTimer=41..}] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=0}] run tag @a add GoldLaunch

execute as @e[tag=DekuFlower] at @s if entity @a[tag=Wearing_Deku_Mask,distance=0..1,scores={Sneak=0}] run scoreboard players set @s _DekuFlowerTimer 0
# ITEM FRAME ROTATE GLIDING EFFECT

execute as @a[tag=Float] at @s run function majoras_mask:items/deku_flower/deku_flower_float
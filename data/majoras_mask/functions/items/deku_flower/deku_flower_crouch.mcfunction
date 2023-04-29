execute at @e[distance=..1.5, tag=DekuFlower] run setblock ~ ~ ~ spruce_slab replace

scoreboard players add @s DekuCrouchTimer 1

execute if score @s DekuCrouchTimer matches ..20 run playsound minecraft:block.nylium.step block @a ~ ~ ~ 0.1 1
# first step, wait 40 ticks in a deku flower

scoreboard players add @s DekuCrouchTimer 1

execute at @e[distance=..1, tag=DekuFlower, limit=1] run tp @s ~ ~ ~

execute if score @s DekuCrouchTimer matches ..20 run playsound minecraft:block.nylium.step block @a ~ ~ ~ 0.1 1
execute if score @s DekuCrouchTimer matches 20 run playsound block.beehive.enter block @a ~ ~ ~ 1 1
execute if score @s DekuCrouchTimer matches 40 run playsound block.beehive.enter block @a ~ ~ ~ 1 2
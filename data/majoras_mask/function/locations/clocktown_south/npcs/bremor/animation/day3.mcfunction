
# Running as AJ Bremor Root

execute store result score @s WorkingVariable run scoreboard players get @e[tag=BremorInteraction,limit=1] npc_movement

execute if score @s WorkingVariable matches 0 run tp @s 1.0 112 39.0 90 0
execute if score @s WorkingVariable matches 1 run tp @s 0.0 112 39.0 90 0
execute if score @s WorkingVariable matches 2 run tp @s -1.0 112 39.0 90 0
execute if score @s WorkingVariable matches 3 run tp @s -1.0 112 39.0 -180 0
execute if score @s WorkingVariable matches 4 run tp @s -1.0 112 38.0 -180 0
execute if score @s WorkingVariable matches 5 run tp @s -1.0 112 37.0 -180 0
execute if score @s WorkingVariable matches 6 run tp @s -1.0 112 36.0 -180 0
execute if score @s WorkingVariable matches 7 run tp @s -1.0 112 36.0 -90 0
execute if score @s WorkingVariable matches 8 run tp @s 0.0 112 36.0 -90 0
execute if score @s WorkingVariable matches 9 run tp @s 1.0 112 36.0 -90 0
execute if score @s WorkingVariable matches 10 run tp @s 2.0 112 36.0 -90 0
execute if score @s WorkingVariable matches 11 run tp @s 2.0 112 36.0 0 0
execute if score @s WorkingVariable matches 12 run tp @s 2.0 112 37.0 0 0
execute if score @s WorkingVariable matches 13 run tp @s 2.0 112 38.0 0 0
execute if score @s WorkingVariable matches 14 run tp @s 2.0 112 39.0 0 0
execute if score @s WorkingVariable matches 15 run tp @s 2.0 112 39.0 90 0

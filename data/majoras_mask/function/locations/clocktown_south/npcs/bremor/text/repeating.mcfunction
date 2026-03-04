
# Running as minecraft:interaction

execute store result score @s WorkingVariable2 run scoreboard players get @e[tag=globals, limit=1] DayCycle

execute if score @s text matches 1 if score @s WorkingVariable2 matches 1 run tellraw @a[distance=..6] ["",{"text":"Bremor: ","color":"dark_purple"},{"text":"Tsk! Is Brac working t'night?"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 2 run tellraw @a[distance=..6] ["",{"text":"Bremor: ","color":"dark_purple"},{"text":"Tsk, tsk, Brac... I wonder if this'll make it?"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 3 run tellraw @a[distance=..6] ["",{"text":"Bremor: ","color":"dark_purple"},{"text":"Tsk! I knew it... It's startin' to feel like this job'll be impossible."}]

return 1
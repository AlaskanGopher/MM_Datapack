
# Running as minecraft:interaction

execute store result score @s WorkingVariable2 run scoreboard players get @e[tag=globals, limit=1] Time

execute if score @s text matches 1 if score @s WorkingVariable2 matches ..11999 run tellraw @a[distance=..6] ["",{"text":"Apprentice: ","color":"green"},{"text":"Huh? The moon?"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 12000.. run tellraw @a[distance=..6] ["",{"text":"Apprentice: ","color":"green"},{"text":"It's gotten bigger again. Th-this is bad..."}]

return 1

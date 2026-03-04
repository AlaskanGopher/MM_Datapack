
# Running as minecraft:interaction

execute store result score @s WorkingVariable2 run scoreboard players get @e[tag=globals, limit=1] DayCycle

execute if score @s text matches 1 if score @s WorkingVariable2 matches 1 run tellraw @a[distance=..6] ["",{"text":"Mack: ","color":"green"},{"text":"Hey, apprentice! Don't just stand around lookin' at the sky all day!"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 2 run tellraw @a[distance=..6] ["",{"text":"Mack: ","color":"green"},{"text":"Bremor! Don't be standin' 'round lookin' at yer feet all day!"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 3 run tellraw @a[distance=..6] ["",{"text":"Mack: ","color":"green"},{"text":"I'm sorry, Bremor, but I'm going, too!"}]

return 1
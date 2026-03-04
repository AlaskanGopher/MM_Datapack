
# Running as minecraft:interaction

execute unless entity @e[tag=globals, tag=!DGaru_Garu] run return 0

execute if score @s text matches 1 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"La-la-la... They said I was much too loud when I practiced in my room."}]
execute if score @s text matches 2 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"They got mad. Sigh...Now I'm sad I'll just stay here all night and away from their pad."}]
execute if score @s text matches 2 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"And you are a child, so you must go to bed"}]
execute if score @s text matches 3 run tag @e[tag=globals,tag=!DGaru_Garu] add DGaru_Garu

return 1
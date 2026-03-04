
# Running as minecraft:interaction

execute unless entity @e[tag=globals,tag=HasBremenMask, tag=!HGaru_Garu] run return 0

execute if score @s text matches 11 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"The leader was a good instructor. His members matured quickly and they became adults in an instant."}]
execute if score @s text matches 11 run tag @e[tag=globals,tag=!HGaru_Garu] add HGaru_Garu
execute if score @s text matches 11 run tag @e[tag=globals,tag=!DGaru_Garu] add DGaru_Garu

return 1

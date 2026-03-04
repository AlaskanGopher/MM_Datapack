
# Running as minecraft:interaction

execute if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=GatesOpen] run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"gold"},{"text":"The northern swamp at "},{"text":"Woodfall ","color":"red"},{"text":"lies in this direction. Be careful."}]

return 1

# Running as minecraft:interaction

execute if score @s text matches 1 run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"gold"},{"text":"The southern swamp at "},{"text":"Woodfall ","color":"red"},{"text":"lies in this direction. Be careful."}]

return 1
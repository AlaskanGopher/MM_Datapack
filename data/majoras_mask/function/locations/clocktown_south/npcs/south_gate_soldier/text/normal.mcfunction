
# Running as minecraft:interaction

execute if score @s text matches 1 on target run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"Stop right there! Have you some errand in the "},{"text":"swamp","color":"red"},{"text":"?"}]
execute if score @s text matches 2 on target run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"It is dangerous outside the town walls, so I cannot allow a child like you to..."}]
execute if score @s text matches 3 on target run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"...A "},{"text":"sword","color":"red"},{"text":"?"}]
execute if score @s text matches 4 on target run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"My apologies, sir. It was wrong of me to treat you like a child."}]
execute if score @s text matches 5 on target run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"The southern swamp at "},{"text":"Woodfall ","color":"red"},{"text":"lies in this direction. Be careful."}]
execute if score @s text matches 5 on target run tag @e[tag=globals,tag=!GatesOpen] add GatesOpen

return 1
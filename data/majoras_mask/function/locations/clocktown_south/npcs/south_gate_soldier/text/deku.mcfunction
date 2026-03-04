
# Running as minecraft:interaction

execute if score @s text matches 1 run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"Stop right there, Deku Scrub! Do you intend to return to the "},{"text":"swamp ","color":"red"},{"text":"alone?"}]
execute if score @s text matches 2 run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"It is dangerous outside the town walls, so I cannot allow a child like you to leave unaccompanied."}]
execute if score @s text matches 3 run tellraw @a[distance=..6] ["",{"text":"Soldier: ","color":"dark_gray"},{"text":"You are not allowed to pass through here without an adult or until you are old enough to carry a "},{"text":"weapon","color":"red"},{"text":"."}]

return 1
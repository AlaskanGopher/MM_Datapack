
# Running as minecraft:interaction

execute store result score @s WorkingVariable2 run scoreboard players get @e[tag=globals, limit=1] DayCycle

execute if score @s text matches 1 if score @s WorkingVariable2 matches 1 run tellraw @a[distance=..6] ["",{"text":"Brac: ","color":"gray"},{"text":"This poster's an eyesore! What a sorry collection of cowards!! Bluh-yek! Foo!"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 2 run tellraw @a[distance=..6] ["",{"text":"Brac: ","color":"gray"},{"text":"Bwah! I won't run! I'm stickin' with my parents! I'm diff'rent from you cowards!"}]
execute if score @s text matches 1 if score @s WorkingVariable2 matches 3 run tellraw @a[distance=..6] ["",{"text":"Brac: ","color":"gray"},{"text":"Bwah! I'm not gonna run! Not me! You got that? I'm Master Mutoh's apprentice!"}]

return 1

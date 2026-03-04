
# Running as minecraft:interaction

execute unless entity @e[tag=globals,tag=!HasBremenMask,tag=!HGaru_Garu] run return 0

execute if score @s text matches 1 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"La-la-la... They said I was much too loud when I practiced in my room."}]
execute if score @s text matches 2 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"They got mad. Sigh...Now I'm sad. I'll just think about the past to keep my mind off the bad."}]
execute if score @s text matches 3 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Ah, yes, I'll do that..."}]
execute if score @s text matches 4 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Dear guest...Long ago, I was in an animal troupe, with dogs and donkeys and such."}]
execute if score @s text matches 5 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Why could a...? Why could a...? Why could a man join?!? That's 'cause a man is an animal, too, my boy!"}]
execute if score @s text matches 6 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"They were all great. But there was one thing I didn't like about it..."}]
execute if score @s text matches 7 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Why was the...? Why was the...? Why was the dog the leader?!? Was it 'cause something was wrong with me, sir???"}]
execute if score @s text matches 8 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"Oh, that dog was an amazing leader! He always had a stellar troupe no matter what animals he had to work with..."}]
execute if score @s text matches 9 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"That's why I...That's why I... That's why I stole it... The dog's "},{"text":"mask","color": "red"},{"text":". I stole it."}]
execute if score @s text matches 10 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"I wanted it because it was the leader's mask..."}]
execute if score @s text matches 11 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"But I no longer need it... I give it to my gest."}]
execute if score @s text matches 12 run tellraw @a[distance=..6] ["",{"text":"Guru-Guru","color": "#2CBAA8"},{"text":"The leader was a good instructor. His members matured quickly and they became adults in an instant."}]
execute if score @s text matches 12 run tag @e[tag=globals,tag=!HGaru_Garu] add HGaru_Garu
execute if score @s text matches 12 run tag @e[tag=globals,tag=!HasBremenMask] add HasBremenMask
execute if score @s text matches 12 run tag @e[tag=globals,tag=!DGaru_Garu] add DGaru_Garu

return 1
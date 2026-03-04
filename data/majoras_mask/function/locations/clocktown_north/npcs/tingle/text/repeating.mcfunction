
# Running as minecraft:interaction

execute store result score @s WorkingVariable2 if entity @e[tag=globals, limit=1, tag=TingleMet]

# Set Temp Timer Forward
   execute unless score @s npc_state matches 14 \
      run scoreboard players set @s npc_state 14
   execute if score @s text matches 1 \
      run scoreboard players set @s npc_timer_temp 61
   
   # Meet Tingle (First Time each cycle)
   execute if score @s text matches 1 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"What's this? Green clothes... White fairy... Sir, could you, by chance, be a forest fairy?"}]
   execute if score @s text matches 2 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Oh my!"}]
   execute if score @s text matches 3 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"My name is "},{"text":"Tingle","color":"red"},{"text":"! I think I am the same as you, sir. A forest fairy!"}]
   execute if score @s text matches 4 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Alas, though I am already age 35, no fairy has come to me yet..."}]
   execute if score @s text matches 5 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"My father tells me to grow up and act my age, but why?"}]
   execute if score @s text matches 6 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"I tell you... Tingle is the very reincarnation of a fairy!"}]
   execute if score @s text matches 7 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Now while I stand here waiting for a fairy of my own, I sell maps to help out my father."}]
   execute if score @s text matches 8 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Lucky! Lucky! You're so lucky to have a fairy! I know! I know! We should be friends!"}]
   execute if score @s text matches 9 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Yes! Yes! In exchange, I will sell you a map for cheap as a sign of my friendship."}]
   execute if score @s text matches 10 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Will you buy one of Tingle's "},{"text":"maps?","color":"green"},{"text":"?"}]

   execute if score @s text matches 11 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"[Shop will be added later...]"}]

   execute if score @s text matches 12 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"...I see! Well, call again!"}]
   execute if score @s text matches 13 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Tingle, Tingle! Kooloo-Limpah!","color":"green"}]
   execute if score @s text matches 13 if score @s WorkingVariable2 matches 0 \
      run scoreboard players set @s npc_timer_temp 0

   execute if score @s npc_timer_temp matches 50.. if score @s text matches 14 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"...These are the magic words that Tingle created himself."}]
   execute if score @s npc_timer_temp matches 50.. if score @s text matches 15 if score @s WorkingVariable2 matches 0 \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Don't steal them!"}]
   execute if score @s npc_timer_temp matches 50.. if score @s text matches 15 if score @s WorkingVariable2 matches 0 \
      run tag @e[tag=globals,limit=1] add TingleMet

   # Tingle Met
   execute if score @s text matches 1 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Uh, sir?"}]
   execute if score @s text matches 2 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Hello, Mr. Fairy!"}]
   execute if score @s text matches 3 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Will you buy one of Tingle's "},{"text":"maps?","color":"green"},{"text":"?"}]
    
   execute if score @s text matches 4 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"[Shop will be added later...]"}]
    
   execute if score @s text matches 5 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"...I see! Well, call again!"}]
   execute if score @s text matches 6 if score @s WorkingVariable2 matches 1.. \
      run tellraw @a[distance=..6] ["",{"text":"Tingle: ","color":"green"},{"text":"Tingle, Tingle! Kooloo-Limpah!","color":"green"}]
   execute if score @s text matches 6 if score @s WorkingVariable2 matches 1.. \
      run scoreboard players set @s npc_timer_temp 0

   return 1
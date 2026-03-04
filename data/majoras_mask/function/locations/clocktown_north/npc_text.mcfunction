
# North Gate Guard
execute if entity @s[tag=NorthClocktownSoldierInteraction] if entity @e[tag=globals,tag=GatesOpen] if function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier/text/repeating \
    run return 0

### Player Specific Text ###

## If interacting player is within distance ##
execute store result score @s WorkingVariable2 \
    run function majoras_mask:bool/interacting_player_distance {max_distance: 6}

# Tingle
execute if entity @s[tag=TingleInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_north/npcs/tingle/text/repeating \
    run return 0

## If player is human ##
execute store result score @s WorkingVariable2 \
    run function majoras_mask:bool/interacting_player_attributes {tag: NoTransformationMask, max_distance: 6}

# North Gate Guard
execute if entity @s[tag=NorthClocktownSoldierInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier/text/normal \
    run return 0

## If player is Deku ##
execute store result score @s WorkingVariable2 \
    run function majoras_mask:bool/interacting_player_attributes {tag: Wearing_Deku_Mask, max_distance: 6}

# North Gate Guard
execute if entity @s[tag=NorthClocktownSoldierInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier/text/deku \
    run return 0
   
#jim
 #Before balloon pop 
   execute at @e[tag=JimInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"...Whaddya want, shrimp? I'm busy practicing with my blowgun!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"If you can't pop that "},{"text":"balloon","color":"red"},{"text":", then don't mess with Jim! Grrrr..."}]
 #After balloon pop as deku 
   execute at @e[tag=JimInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"Are you the one who just popped that up there? Not bad for a Deku Scrub!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"We Bombers have a "},{"text":"hideout","color":"red"},{"text":" that leads to the "},{"text":"observatory","color":"red"},{"text":" outside town."}]
   execute at @e[tag=JimInteraction] if score @s text matches 3 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"You need a "},{"text":"code","color":"red"},{"text":"  to get in. Maybe I'll tell you what it is!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 4 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"But don't think you're getting it that easily! I can't just tell you what the code is... You'll have to pass my test first."}]
   execute at @e[tag=JimInteraction] if score @s text matches 5 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"Are you ready?"},{"text":" Yes No","color":"green"}]
#yes
   execute at @e[tag=JimInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"All right! Line up, guys!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"If you can find all "},{"text":"five","color":"red"},{"text":"  of us by "},{"text":"tomorrow morning","color":"red"},{"text":", I'll teach you the code!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 3 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"Are you ready?"}]
#No
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=!HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"I thought you were tougher than that...But you're nothing special!"}]
#If failed hide and seek Add hide and seek fail tag when time is up 
   execute at @e[tag=JimInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"I thought you were tougher than that...But you're nothing special!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"Wanna try again?"},{"text":" Yes No","color":"green"}]
   execute at @e[tag=JimInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"All right! Line up, guys!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"If you can find all "},{"text":"five","color":"red"},{"text":"  of us by "},{"text":"tomorrow morning","color":"red"},{"text":", I'll teach you the code!"}]
   execute at @e[tag=JimInteraction] if score @s text matches 3 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=BomberBalloonPop] if entity @e[tag=globals,tag=HideAndSeekFail] if entity @e[tag=!BomberGame] run tellraw @a[distance=..6] ["",{"text":"Jim: ","color":"red"},{"text":"Are you ready?"}]
    

 #Great fairy Before reform , says when you walk to the middle of the fairy fountain without stray fairy 
    execute at @e[tag=CTFairyInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Young one! Please hear my plea! I have been broken and shattered to pieces by the masked Skull Kid.","color":"blue"}]
    execute at @e[tag=CTFairyInteraction] if score @s text matches 2 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Please find the ","color":"blue"},{"text":"one","color":"red"},{"text":" Stray Fairy lost in town, and bring her to this","color":"blue"},{"text":"Fairy Fountain","color":"red"},{"text":".","color":"blue"}]
 #Great fairy After reform 
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Tatl, and you, young one of the altered shape..."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 2 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Thank you for returning my broken and shattered body to normal."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 3 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"I am the Great "},{"text":"Fairy of Magic.","color":"green"},{"text":" I thought that masked child was helping me, and I grew careless."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 4 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"All I can offer you now is this: I shall grant you "},{"text":"Magic Power","color":"green"},{"text":" as a sign of my gratitude. Please accept it!"}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 5 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"You've been granted "},{"text":"Magic Power","color":"green"},{"text":"! In your current form, press "},{"text":"(B)","color":"green"},{"text":" to shoot "},{"text":"bubble blasts","color":"red"},{"text":". Press and hold "},{"text":"(B)","color":"green"},{"text":" to blow a "},{"text":"big bubble","color":"red"}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 6 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Release "},{"text":"(B)","color":"green"},{"text":" to shoot it. Your "},{"text":"Magic Power","color":"green"},{"text":"decreases when you shoot. Replenish it with "},{"text":"Magic Jars","color":"red"},{"text":" and "},{"text":"Potions","color":"red"},{"text":"."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 7 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"The"},{"text":"man","color":"red"},{"text":" who lives in the "},{"text":"observatory","color":"red"},{"text":" just outside of town may know of the "},{"text":"Skull Kid's","color":"red"},{"text":" whereabouts. But be careful!"}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 8 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"You must not underestimate that child's powers. Kind young one,"}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 9 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"If ever you are returned to your "},{"text":"former shape","color":"red"},{"text":", come see me. I shall give you "},{"text":"more help","color":"red"},{"text":"."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 9 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=!HasMagic] run tag @e[tag=globals,tag=!HasMagic] add HasMagic
 #Repeated text if not human 
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Welcome, "},{"selector":"@a[distance=..6]"},{"text":"..."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"Come see me again if ever you are returned to your "},{"text":"former shape","color":"red"},{"text":". I shall give you an item that will add to your "},{"text":"strength","color":"red"},{"text":"..."}]
    execute at @e[tag=CTGreat_FairyInteraction] if score @s text matches 1 on target if entity @s[distance=..6] if entity @e[tag=globals,tag=HasMagic] run tellraw @a[distance=..6] ["",{"text":"Great_Fairy:","color":"#EB7114"},{"text":"The "},{"text":"Skull Kid","color":"red"},{"text":" is a childish demon... If you seek him, ask the "},{"text":"children","color":"red"},{"text":" in town."}]
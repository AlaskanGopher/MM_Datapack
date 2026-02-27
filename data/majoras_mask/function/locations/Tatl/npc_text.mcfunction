#REQUIRED
 #First time entering clock town 
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"He gives me the creeps! That mask salesman was the... Sorry...just thinking aloud.","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"But ","color":"blue"},{"text":"three days","color":"red"},{"text":"? Even if we never sleep, that still leaves us with a measly ","color":"blue"},{"text":"72 hours","color":"red"},{"text":" ! Talk about demanding!","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Well, don't just stand there! We're going to see the ","color":"blue"},{"text":"Great Fairy","color":"red"},{"text":"!","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Look, you wanna find the Skull Kid, don't you?","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"The ","color":"blue"},{"text":"Great Fairy","color":"red"},{"text":" will know what he's up to. She watches over everything.","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"And just between you and me, the Skull Kid is no match for the ","color":"blue"},{"text":"Great Fairy","color":"red"},{"text":".","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Go to the ","color":"blue"},{"text":"shrine","color":"red"},{"text":" near the","color":"blue"},{"text":"North Gate","color":"red"},{"text":". You'll find the","color":"blue"},{"text":"Great Fairy","color":"red"},{"text":" in there!","color":"blue"}]
    



 #Tatl, says the first time you walk into the fairy fountain 
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] if entity @s[tag=!GFTatl,distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Oh no! The Great Fairy!","color":"blue"}]
    execute at @e[tag=Tatl] if score @s text matches 1 on target if entity @s[distance=..6] run tag @e[tag=globals,tag=!GFTatl] add GFTatl















#Not required
 #in intro after getting her will only play if on a deku flower in that room 
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Hey! If I call you, press ","color":"blue"},{"text":"(^)","color":"yellow"},{"text":" right away!","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"I can tell you're not very used to your ","color":"blue"},{"text":"Deku Scrub","color":"red"},{"text":" body yet.","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"All right, listen up! If you press and hold ","color":blue},{"keybind":"key.sneak","color":"blue"},{"text":" as a Deku Scrub while standing on a ","color":"blue"},{"text":"Deku Flower","color":"red"},{"text":", you can ","color":"blue"},{"text":"dive","color":"red"},{"text":" into it.","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"If you wait a bit before releasing ","color":blue},{"keybind":"key.sneak","color":"blue"},{"text":" you'll ","color":"blue"},{"text":"launch","color":"red"},{"text":"  out of the flower. Press","color":"blue"},{"keybind":"key.sneak","color":"blue"},{"text":" while flying to ","color":"blue"},{"text":"descend","color":"red"},{"text":".","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Did you get that? ","color":"blue"},{"text":"No Yes","color":"green"}]
  #on no repeat on yes move forward 
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Are you sure?","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"One more thing: Press ","color":"blue"},{"keybind":"key.sneak","color":"blue"},{"text":" when you're on the ground to perform a","color":"blue"},{"text":"spin attack","color":"red"},{"text":"!","color":"blue"}]
  #Locking on to dead deku scrub 
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"There you go! See? You can do it if you try!","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"When I fly over to people or objects, use ","color":"blue"},{"text":"(Z)","color":"gray"},{"text":" to look at them so you can talk to them.","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Use ","color":"blue"},{"text":"Z Targeting","color":"red"},{"text":" to talk to people even if they're far away.","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"Or, if there's no one to target, you can use ","color":"blue"},{"text":"(Z)","color":"gray"},{"text":" to look ","color":"blue"},{"text":"straight ahead","color":"red"},{"text":".","color":"blue"}]
    execute at @e[tag=IntroInteraction] if score @s text matches 1 on target if entity @s[distance=..6] run tellraw @a[distance=..6] ["",{"text":"Tatl:","color":"#FFFFFF"},{"text":"But enough about that for now... Come over to this ","color":"blue"},{"text":"tree","color":"red"},{"text":" and ","color":"blue"},{"text":"check","color":"red"},{"text":" it out! ","color":"blue"}]
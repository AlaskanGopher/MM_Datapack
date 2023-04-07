execute unless entity @s[scores={click=0..}] run kill @e[type=armor_stand,tag=HappyMaskSalesman]
execute unless entity @s[scores={click=0..}] run kill @e[type=armor_stand,tag=HappyMaskSalesmanBack]
execute unless entity @s[scores={click=0..}] run tp @s 305 44 -309 337 15
execute unless entity @s[scores={click=0..}] run fill 306 45 -309 306 45 -309 minecraft:barrier
execute unless entity @s[scores={click=0..}] run fill 304 45 -309 304 45 -309 minecraft:barrier
execute unless entity @s[scores={click=0..}] run fill 305 45 -308 305 45 -308 minecraft:barrier
execute unless entity @s[scores={click=0..}] run fill 305 45 -310 305 45 -310 minecraft:barrier
execute unless entity @s[scores={click=0..}] run fill 305 47 -309 305 47 -309 minecraft:barrier
execute unless entity @s[scores={click=0..}] run tag @s remove MeetSalesman
execute unless entity @s[scores={click=0..}] run tag @s add NoOcarina
execute unless entity @s[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[scores={click=0..}] run scoreboard players set @s click 0

execute if entity @s[scores={click=0}] run scoreboard players set @s click 1
execute if entity @s[scores={click=1}] run summon armor_stand 308 42 -302 {Tags:[HappyMaskSalesman],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:9502975}}},{id:"leather_leggings",Count:1b,tag:{display:{color:9502975}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9502975}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939075392,516310777,-2017100543,-719750971],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY4YjQwNzJjZWVjOWQ1ZDc3YzI4ZWZhYjQ5NGZmZjg3ZjU0ZGM0NDQ0ZjM5YmQzMzNiMzgyMmQ1ODAyMzg1YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",tag:{CustomModelData:1},Count:1b},{id:"minecraft:stone",tag:{CustomModelData:1},Count:1b}],CustomName:'{"text":"HappyMaskSalesman"}',Pose:{Body:[10f,0f,0f],LeftArm:[328f,0f,37f],RightArm:[335f,0f,322f]}}
execute if entity @s[scores={click=1}] run summon armor_stand 308 42 -302 {Tags:[HappyMaskSalesmanBack],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Rotation:[160f],ArmorItems:[{},{},{},{id:"minecraft:acacia_planks",Count:1b,tag:{CustomModelData:2}}],CustomName:'{"text":"HappyMaskSalesmanBack"}',Pose:{Body:[10f,0f,0f],Head:[10f,0f,0f],LeftArm:[328f,0f,37f],RightArm:[335f,0f,322f]}}


# Hand Hold
execute if entity @s[scores={click=1}] run tellraw @s ["",{"text":" . . . : ","color":"gold"},{"text":"You've met with a terrible fate, haven't you?"}]
execute if entity @s[scores={click=1}] run scoreboard players set @s click 2

execute if entity @s[scores={click=3}] run fill 306 45 -309 306 45 -309 minecraft:air
execute if entity @s[scores={click=3}] run fill 304 45 -309 304 45 -309 minecraft:air
execute if entity @s[scores={click=3}] run fill 305 45 -308 305 45 -308 minecraft:air
execute if entity @s[scores={click=3}] run fill 305 45 -310 305 45 -310 minecraft:air
execute if entity @s[scores={click=3}] run fill 305 47 -309 305 47 -309 minecraft:air

execute if entity @s[scores={click=3}] run tp @s 307 42 -304 333 0
execute if entity @s[scores={click=3}] run fill 308 43 -304 308 43 -304 minecraft:barrier
execute if entity @s[scores={click=3}] run fill 306 42 -304 306 42 -304 minecraft:barrier
execute if entity @s[scores={click=3}] run fill 306 44 -304 306 44 -304 minecraft:barrier
execute if entity @s[scores={click=3}] run fill 307 43 -303 307 43 -303 minecraft:barrier
execute if entity @s[scores={click=3}] run fill 307 43 -305 307 43 -305 minecraft:barrier
execute if entity @s[scores={click=3}] run fill 307 45 -304 307 45 -304 minecraft:barrier


# Hand on Chest
execute if entity @s[scores={click=3}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[294f,302f,0f]}}
execute if entity @s[scores={click=3}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[294f,302f,0f]}}

#execute if entity @s[scores={click=3}] run tp @s 307 42 -304
execute if entity @s[scores={click=3}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"I own the "},{"text":"Happy Mask Shop","color":"red"},{"text":"."}]
execute if entity @s[scores={click=3}] run scoreboard players set @s click 4
#execute if entity @s[scores={click=5}] run tp @s 307 42 -304
execute if entity @s[scores={click=5}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"I travel far and wide in search of masks..."}]
execute if entity @s[scores={click=5}] run scoreboard players set @s click 6
#execute if entity @s[scores={click=7}] run tp @s 307 42 -304
execute if entity @s[scores={click=7}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"During my travels, a very important"},{"text":" mask ","color":"red"},{"text":"was stolen from me by an imp in the woods."}]
execute if entity @s[scores={click=7}] run scoreboard players set @s click 8
#execute if entity @s[scores={click=9}] run tp @s 307 42 -304
execute if entity @s[scores={click=9}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"So here I am at a loss..."}]
execute if entity @s[scores={click=9}] run scoreboard players set @s click 10
#execute if entity @s[scores={click=11}] run tp @s 307 42 -304
execute if entity @s[scores={click=11}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"And now I've found you."}]
execute if entity @s[scores={click=11}] run scoreboard players set @s click 12
#execute if entity @s[scores={click=13}] run tp @s 307 42 -304
execute if entity @s[scores={click=13}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"Now don't think me rude, but I have been following you..."}]
execute if entity @s[scores={click=13}] run scoreboard players set @s click 14

# On Chin
#execute if entity @s[scores={click=15}] run tp @s 307 42 -304
execute if entity @s[scores={click=15}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=15}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=15}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"...For I know of a way to return you to your "},{"text":"former self","color":"red"},{"text":"."}]
execute if entity @s[scores={click=15}] run scoreboard players set @s click 16
#execute if entity @s[scores={click=17}] run tp @s 307 42 -304
execute if entity @s[scores={click=17}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"If you can get back the "},{"text":"precious item","color":"red"},{"text":" that was stolen from you,"}]
execute if entity @s[scores={click=17}] run scoreboard players set @s click 18
#execute if entity @s[scores={click=19}] run tp @s 307 42 -304
execute if entity @s[scores={click=19}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"I will return you to "},{"text":"normal","color":"red"},{"text":"."}]
execute if entity @s[scores={click=19}] run scoreboard players set @s click 20

# Hands Out
#execute if entity @s[scores={click=21}] run tp @s 307 42 -304
execute if entity @s[scores={click=21}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[10f,0f,0f],LeftArm:[273f,10f,0f],RightArm:[280f,349f,0f]}}
execute if entity @s[scores={click=21}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Body:[10f,0f,0f],Head:[10f,0f,0f],LeftArm:[273f,10f,0f],RightArm:[280f,349f,0f]}}
execute if entity @s[scores={click=21}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"In exchange..."}]
execute if entity @s[scores={click=21}] run scoreboard players set @s click 22
#execute if entity @s[scores={click=23}] run tp @s 307 42 -304
execute if entity @s[scores={click=23}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"All I ask is that you also get back my "},{"text":"precious mask","color":"red"},{"text":" that the imp stole from me."}]
execute if entity @s[scores={click=23}] run scoreboard players set @s click 24

# On Chin
#execute if entity @s[scores={click=25}] run tp @s 307 42 -304
execute if entity @s[scores={click=25}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=25}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=25}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"What?"}]
execute if entity @s[scores={click=25}] run scoreboard players set @s click 26
#execute if entity @s[scores={click=27}] run tp @s 307 42 -304
execute if entity @s[scores={click=27}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"Is it not a simple task?"}]
execute if entity @s[scores={click=27}] run scoreboard players set @s click 28
#execute if entity @s[scores={click=29}] run tp @s 307 42 -304
execute if entity @s[scores={click=29}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"Why, to someone like you, it should by no means be a difficult task."}]
execute if entity @s[scores={click=29}] run scoreboard players set @s click 30

# Hand Hold
#execute if entity @s[scores={click=31}] run tp @s 307 42 -304
execute if entity @s[scores={click=31}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[10f,0f,0f],LeftArm:[294f,37f,0f],RightArm:[294f,322f,0f]}}
execute if entity @s[scores={click=31}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Body:[10f,0f,0f],Head:[10f,0f,0f],LeftArm:[294f,37f,0f],RightArm:[294f,322f,0f]}}
execute if entity @s[scores={click=31}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"Except..."}]
execute if entity @s[scores={click=31}] run scoreboard players set @s click 32
#execute if entity @s[scores={click=33}] run tp @s 307 42 -304
execute if entity @s[scores={click=33}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"The one thing is..."}]
execute if entity @s[scores={click=33}] run scoreboard players set @s click 34
#execute if entity @s[scores={click=35}] run tp @s 307 42 -304
execute if entity @s[scores={click=35}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"I'm a very busy fellow..."}]
execute if entity @s[scores={click=35}] run scoreboard players set @s click 36
#execute if entity @s[scores={click=37}] run tp @s 307 42 -304
execute if entity @s[scores={click=37}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"And I must leave this place in "},{"text":"three days","color":"red"},{"text":"."}]
execute if entity @s[scores={click=37}] run scoreboard players set @s click 38
#execute if entity @s[scores={click=39}] run tp @s 307 42 -304
execute if entity @s[scores={click=39}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"How grateful I would be if you could bring it back to me before my "},{"text":"time","color":"red"},{"text":" here is up..."}]
execute if entity @s[scores={click=39}] run scoreboard players set @s click 40

# On Chin
#execute if entity @s[scores={click=41}] run tp @s 307 42 -304
execute if entity @s[scores={click=41}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=41}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[342f,0f,44f],RightArm:[266f,315f,0f]}}
execute if entity @s[scores={click=41}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"But yes... You'll be fine. I see you are young and have tremendous courage."}]
execute if entity @s[scores={click=41}] run scoreboard players set @s click 42
#execute if entity @s[scores={click=43}] run tp @s 307 42 -304
execute if entity @s[scores={click=43}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"I'm sure you'll find it right away."}]
execute if entity @s[scores={click=43}] run scoreboard players set @s click 44

# Hands Out
#execute if entity @s[scores={click=45}] run tp @s 307 42 -304
execute if entity @s[scores={click=45}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[10f,0f,0f],LeftArm:[273f,10f,0f],RightArm:[280f,349f,0f]}}
execute if entity @s[scores={click=45}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Body:[10f,0f,0f],Head:[10f,0f,0f],LeftArm:[273f,10f,0f],RightArm:[280f,349f,0f]}}
execute if entity @s[scores={click=45}] run tellraw @s ["",{"text":"Happy Mask Salesman: ","color":"gold"},{"text":"Well then, I am counting on you..."}]
execute if entity @s[scores={click=45}] run scoreboard players set @s click 46

execute if entity @s[scores={click=47}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesman,limit=1] {Pose:{Body:[0f,0f,0f],LeftArm:[294f,37f,0f],RightArm:[294f,322f,0f]}}
execute if entity @s[scores={click=47}] run data merge entity @e[type=armor_stand,tag=HappyMaskSalesmanBack,limit=1] {Pose:{Body:[0f,0f,0f],Head:[10f,0f,0f],LeftArm:[294f,37f,0f],RightArm:[294f,322f,0f]}}
#execute if entity @s[scores={click=47}] run tp @s 307 42 -304

execute if entity @s[scores={click=47}] run tag @s remove NoOcarina
execute if entity @s[scores={click=47}] run fill 306 42 -303 308 45 -305 minecraft:air replace minecraft:barrier
execute if entity @s[scores={click=47}] run tag @s remove MeetSalesman2
execute if entity @s[scores={click=47}] run scoreboard objectives remove click
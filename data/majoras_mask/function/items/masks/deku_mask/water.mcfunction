#execute unless entity @s[tag=DekuWaterBounce] run tag @s add DekuWaterBounce

#execute as @a[scores={DekuWater=1..,Cooldown=10..}] if entity @s[tag=DekuWaterBounce] run scoreboard players add @s DekuBounceCount 1
#execute as @a[scores={DekuWater=1..}] if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuWater 0

#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] unless entity @e[type=armor_stand,tag=DekuWaterBounce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["DekuWaterBounce"],Invulnerable:1b,Invisible:1b}

# Deku Bounce | Even Numbers are Spacers

#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] run data merge entity @e[type=armor_stand,tag=DekuWaterBounce,limit=1] {Motion:[0.0,0.4,0.0]}
#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s Cooldown 0
#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] run playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 4 1
#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] run effect give @s minecraft:levitation 1 1 true
#execute as @a[scores={DekuBounceCount=1}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 2

#execute as @a[scores={DekuBounceCount=3}] at @s if entity @s[tag=DekuWaterBounce] run data merge entity @e[type=armor_stand,tag=DekuWaterBounce,limit=1] {Motion:[0.0,0.5,0.0]}
#execute as @a[scores={DekuBounceCount=3}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s Cooldown 0
#execute as @a[scores={DekuBounceCount=3}] at @s if entity @s[tag=DekuWaterBounce] run playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 6 1
#execute as @a[scores={DekuBounceCount=3}] at @s if entity @s[tag=DekuWaterBounce] run effect give @s minecraft:levitation 1 1 true
#execute as @a[scores={DekuBounceCount=3}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 4

#execute as @a[scores={DekuBounceCount=5}] at @s if entity @s[tag=DekuWaterBounce] run data merge entity @e[type=armor_stand,tag=DekuWaterBounce,limit=1] {Motion:[0.0,0.6,0.0]}
#execute as @a[scores={DekuBounceCount=5}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s Cooldown 0
#execute as @a[scores={DekuBounceCount=5}] at @s if entity @s[tag=DekuWaterBounce] run playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 8 1
#execute as @a[scores={DekuBounceCount=5}] at @s if entity @s[tag=DekuWaterBounce] run effect give @s minecraft:levitation 1 1 true
#execute as @a[scores={DekuBounceCount=5}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 6

#execute as @a[scores={DekuBounceCount=7}] at @s if entity @s[tag=DekuWaterBounce] run data merge entity @e[type=armor_stand,tag=DekuWaterBounce,limit=1] {Motion:[0.0,0.8,0.0]}
#execute as @a[scores={DekuBounceCount=7}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s Cooldown 0
#execute as @a[scores={DekuBounceCount=7}] at @s if entity @s[tag=DekuWaterBounce] run playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 10 2
#execute as @a[scores={DekuBounceCount=7}] at @s if entity @s[tag=DekuWaterBounce] run effect give @s minecraft:levitation 1 1 true
#execute as @a[scores={DekuBounceCount=7}] at @s if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 8

#execute as @a[scores={DekuBounceCount=9}] at @s if entity @s[tag=DekuWaterBounce] run tp @s 314 50 -380
#execute as @a[scores={DekuBounceCount=9}] at @s if entity @s[tag=DekuWaterBounce] run kill @e[type=armor_stand,tag=DekuWaterBounce]
#execute as @a[scores={DekuBounceCount=9}] at @s if entity @s[tag=DekuWaterBounce] run effect clear @s minecraft:levitation
#execute as @a[scores={DekuBounceCount=9}] at @s if entity @s[tag=DekuWaterBounce] run tag @s remove DekuWaterBounce
#execute as @a[scores={DekuBounceCount=9}] at @s run scoreboard players set @s DekuBounceCount 0

#Armor Stand, Lock to player X and Z
#execute as @e[type=armor_stand,tag=DekuWaterBounce] run data modify entity @s Pos[0] set from entity @p Pos[0]
#execute as @e[type=armor_stand,tag=DekuWaterBounce] run data modify entity @s Pos[2] set from entity @p Pos[2]
#execute as @e[type=armor_stand,tag=DekuWaterBounce] at @s rotated as @s run tp @s ~0.0 ~0.0 ~0.0 ~0.0 ~0.0

#Out of Water
#execute as @a[scores={Walk=1..}] if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 0
#execute as @a[scores={Walk=1..}] if entity @s[tag=DekuWaterBounce] run tag @s remove DekuWaterBounce
#execute as @a[scores={Walk=1..}] if entity @s[tag=DekuWaterBounce] run effect clear @s minecraft:levitation
#execute as @a[scores={Walk=1..}] if entity @s[tag=DekuWaterBounce] run kill @e[type=armor_stand,tag=DekuWaterBounce]

#execute as @a[scores={Run=1..}] if entity @s[tag=DekuWaterBounce] run scoreboard players set @s DekuBounceCount 0
#execute as @a[scores={Run=1..}] if entity @s[tag=DekuWaterBounce] run tag @s remove DekuWaterBounce
#execute as @a[scores={Run=1..}] if entity @s[tag=DekuWaterBounce] run effect clear @s minecraft:levitation
#execute as @a[scores={Run=1..}] if entity @s[tag=DekuWaterBounce] run kill @e[type=armor_stand,tag=DekuWaterBounce]

execute store result score @s WorkingVariable run function majoras_mask:items/masks/deku_mask/water_check {val: 0}
$execute if score @s WorkingVariable matches 0 if entity @e[tag=$(id)] run kill @e[tag=$(id)]
execute if score @s WorkingVariable matches 0 run return fail

execute store result score @s WorkingVariable run function majoras_mask:items/masks/deku_mask/water_check {val: 1}
$execute if score @s WorkingVariable matches 0 if entity @e[tag=$(id)] run kill @e[tag=$(id)]
execute if score @s WorkingVariable matches 0 run return fail

$execute unless entity @e[tag=$(id)] as @s at @s run summon happy_ghast ^ ^-4 ^ {NoAI: 1b, Invulnerable: 1, Tags:["$(id)"]}
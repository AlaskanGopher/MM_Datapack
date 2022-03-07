# Run Once
execute if entity @s[tag=DekuLaunch] run tag @s add Float
execute if entity @s[tag=DekuLaunch] run effect give @s levitation 100 15
execute if entity @s[tag=DekuLaunch] store result score @s DekuFlowerLaunchPeak run scoreboard players get @s Height
execute if entity @s[tag=DekuLaunch, tag=!GoldLaunch] run scoreboard players operation @s DekuFlowerLaunchPeak += @e[type=marker,tag=globals,limit=1] DekuFlowerPeakHeight
execute if entity @s[tag=DekuLaunch, tag=GoldLaunch] run scoreboard players operation @s DekuFlowerLaunchPeak += @e[type=marker,tag=globals,limit=1] DekuFlowerGoldPeakHeight
execute if entity @s[tag=DekuLaunch, tag=GoldLaunch] run tag @s remove GoldLaunch

# Remove first tick tag
tag @s remove DekuLaunch

# If peak of jump has been reached
execute if entity @s[tag=Float] if score @s DekuFlowerLaunchPeak < @s Height run tag @s add SlowFalling

execute if entity @s[tag=Float, tag=SlowFalling] run effect clear @s levitation
execute if entity @s[tag=Float, tag=SlowFalling] run effect give @s slow_falling

execute if entity @s[tag=Float, tag=SlowFalling] run scoreboard players set @s FlowerDescentTime 0
execute if entity @s[tag=Float, tag=SlowFalling] run scoreboard players set @s DekuFlowerStationaryTime 0

execute if entity @s[tag=Float, tag=SlowFalling] run tag @s remove Float


# Descent
execute store result score @s DekuFlowerLaunchPeak if score @s Height > @s DekuFlowerLaunchPeak run scoreboard players get @s Height

execute if entity @s[tag=SlowFalling] run scoreboard players add @s FlowerDescentTime 1
execute if entity @s[tag=SlowFalling] if score @s HorizontalSpeedSq matches ..10 run scoreboard players add @s DekuFlowerStationaryTime 1

execute store result score @s WorkingVariable if entity @s[tag=SlowFalling] run scoreboard players get @s FlowerDescentTime
execute if entity @s[tag=SlowFalling] run scoreboard players operation @s WorkingVariable *= @e[type=marker,tag=globals,limit=1] FlowerDescentSpeed
execute store result score @s ExpectedFlowerPosition if entity @s[tag=SlowFalling] run scoreboard players get @s DekuFlowerLaunchPeak
execute if entity @s[tag=SlowFalling] run scoreboard players operation @s ExpectedFlowerPosition -= @s WorkingVariable

execute if entity @s[tag=SlowFalling] if score @s ExpectedFlowerPosition >= @s Height run effect give @s levitation
execute if entity @s[tag=SlowFalling] if score @s ExpectedFlowerPosition < @s Height run effect clear @s levitation

# Stop
execute if entity @s[tag=SlowFalling,tag=onGround] run tag @s remove Float
execute if entity @s[tag=SlowFalling,tag=onGround] run tag @s remove SlowFalling

execute store result score @s WorkingVariable if entity @s[tag=SlowFalling] run scoreboard players get @s DekuFlowerStationaryTime
execute if entity @s[tag=SlowFalling] run scoreboard players operation @s WorkingVariable *= @e[type=marker,tag=globals,limit=1] FlowerDescentSpeed
execute store result score @s DekuFlowerFloatEnd if entity @s[tag=SlowFalling] run scoreboard players get @s DekuFlowerLaunchPeak
execute if entity @s[tag=SlowFalling] run scoreboard players operation @s DekuFlowerFloatEnd -= @s WorkingVariable
execute if entity @s[tag=SlowFalling] run scoreboard players operation @s DekuFlowerFloatEnd -= @e[type=marker,tag=globals,limit=1] DekuFlowerDescentDistance

execute if entity @s[tag=SlowFalling] if score @s Height < @s DekuFlowerFloatEnd run tag @s remove Float
execute if entity @s[tag=SlowFalling] if score @s Height < @s DekuFlowerFloatEnd run tag @s remove SlowFalling

execute unless entity @s[tag=Float] unless entity @s[tag=DekuLaunch] unless entity @s[tag=SlowFalling] run effect clear @s slow_falling
execute unless entity @s[tag=Float] unless entity @s[tag=DekuLaunch] unless entity @s[tag=SlowFalling] run effect clear @s levitation


# scoreboard players add @s _DekuFlowerTimer 1

# execute if entity @s[scores={_DekuFlowerTimer=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FlowerFloat"],Invulnerable:1b,Invisible:0b}

# execute if entity @s[scores={_DekuFlowerTimer=1},tag=!GoldLaunch] run data merge entity @e[type=armor_stand,tag=FlowerFloat,sort=nearest,limit=1] {Motion:[0.0,1.3,0.0]}
# execute if entity @s[scores={_DekuFlowerTimer=1},tag=GoldLaunch] run data merge entity @e[type=armor_stand,tag=FlowerFloat,sort=nearest,limit=1] {Motion:[0.0,2.0,0.0]}
# tag @s remove GoldLaunch

# execute if entity @s[scores={_DekuFlowerTimer=15..}] unless block ~ ~-.6 ~ minecraft:air run tag @s remove Float
# execute if entity @s[scores={_DekuFlowerTimer=15..}] unless block ~ ~-.6 ~ minecraft:air run kill @e[type=armor_stand,tag=FlowerFloat,sort=nearest,limit=1]
# execute if entity @s[scores={_DekuFlowerTimer=15..}] unless block ~ ~-.6 ~ minecraft:air run scoreboard players set @s _DekuFlowerTimer 0

#Sounds
# execute if entity @s[scores={_DekuFlowerTimer=15..}] run playsound minecraft:entity.item_frame.rotate_item block @a ~ ~ ~ 0.5 1
# execute if entity @s[scores={_DekuFlowerTimer=75}] run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
# execute if entity @s[scores={_DekuFlowerTimer=95}] run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
# execute if entity @s[scores={_DekuFlowerTimer=115}] run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
# execute if entity @s[scores={_DekuFlowerTimer=135}] run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
# execute if entity @s[scores={_DekuFlowerTimer=15..,Sneak=1..}] run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
#

# execute if entity @s[scores={_DekuFlowerTimer=15..,Sneak=1..}] run tag @s remove Float
# execute if entity @s[scores={_DekuFlowerTimer=15..,Sneak=1..}] run kill @e[type=armor_stand,tag=FlowerFloat]
# execute if entity @s[scores={_DekuFlowerTimer=15..,Sneak=1..}] run scoreboard players set @s _DekuFlowerTimer 0

# execute if entity @s[scores={_DekuFlowerTimer=140..}] run tag @s remove Float
# execute if entity @s[scores={_DekuFlowerTimer=140..}] run kill @e[type=armor_stand,tag=FlowerFloat,sort=nearest,limit=1]
# execute if entity @s[scores={_DekuFlowerTimer=140..}] run scoreboard players set @s _DekuFlowerTimer 0

# execute if entity @s[scores={_DekuFlowerTimer=15..}] at @s if block ~ ~-.6 ~ minecraft:air as @e[type=armor_stand,tag=FlowerFloat,sort=nearest,limit=1] at @s run tp @s ~ ~-0.07 ~
# execute if entity @s[scores={_DekuFlowerTimer=1..}] if entity @e[type=armor_stand,tag=FlowerFloat] at @s run effect give @s minecraft:levitation 1 1 true
# execute if entity @s[scores={_DekuFlowerTimer=15..}] unless entity @e[type=armor_stand,tag=FlowerFloat] at @s run effect clear @s minecraft:levitation

# execute as @e[type=armor_stand,tag=FlowerFloat] run data modify entity @s Motion[0] set from entity @p Motion[0]
# execute as @e[type=armor_stand,tag=FlowerFloat] run data modify entity @s Motion[2] set from entity @p Motion[2]
# execute as @e[type=armor_stand,tag=FlowerFloat] at @s rotated as @s run tp @p ~ ~ ~ ~ ~

# execute if entity @s[scores={_DekuFlowerTimer=0}] unless entity @s[tag=Float] run effect clear @s minecraft:levitation
# execute if entity @s[scores={_DekuFlowerTimer=0}] unless entity @s[tag=Float] run effect clear @s minecraft:jump_boost
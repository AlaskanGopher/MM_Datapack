# Run Once
execute if entity @s[tag=DekuLaunch] run tag @s add Float
execute if entity @s[tag=DekuLaunch] run effect give @s levitation 5 15
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

# Sounds

execute if score @s FlowerDescentTime matches 15.. run playsound minecraft:entity.item_frame.rotate_item block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 75 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 95 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 115 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 135 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 15.. if score @s FlowerDescentTime matches 1 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1

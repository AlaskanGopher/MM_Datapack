# Descent

# Store the peak launch height as the player's max height
execute store result score @s DekuFlowerLaunchPeak if score @s Height > @s DekuFlowerLaunchPeak run scoreboard players get @s Height

# enumerate time spent descending
scoreboard players add @s DekuFlowerDescentTime 1

# if the player's speed is less than some amount, count them is stationary
execute if score @s HorizontalSpeedSq < @e[tag=globals,limit=1] STATIONARY_SPEED_THRESHOLD run scoreboard players add @s DekuFlowerStationaryTime 1

# LDA Descent time
execute store result score @s Accumulator run scoreboard players get @s DekuFlowerDescentTime

# multiply by speed to get total distance fallen
scoreboard players operation @s Accumulator *= @e[tag=globals,limit=1] DEKU_FLOWER_DESCENT_SPEED

# Set the target height to be the max height minus the expected distance fallen
execute store result score @s ExpectedDekuFlowerHeight run scoreboard players get @s DekuFlowerLaunchPeak
scoreboard players operation @s ExpectedDekuFlowerHeight -= @s Accumulator

# Give levitation if below target, otherwise remove it
execute if score @s ExpectedDekuFlowerHeight >= @s Height run effect give @s levitation
execute if score @s ExpectedDekuFlowerHeight < @s Height run effect clear @s levitation

# LDA Time spent while stationary
execute store result score @s Accumulator run scoreboard players get @s DekuFlowerStationaryTime

# Calculate distance fallen while stationary
scoreboard players operation @s Accumulator *= @e[tag=globals,limit=1] DEKU_FLOWER_DESCENT_SPEED

# Set the end of the player's descent to be a constant value less than the peak...
execute store result score @s DekuFlowerFloatEnd run scoreboard players get @s DekuFlowerLaunchPeak
scoreboard players operation @s DekuFlowerFloatEnd -= @e[tag=globals,limit=1] DEKU_FLOWER_DESCENT_DISTANCE

# ...minus the distance spent unmoving
scoreboard players operation @s DekuFlowerFloatEnd -= @s Accumulator

# Stop if ground is touched or minimum height is reached
execute if entity @s[tag=onGround] run tag @s remove DekuFlowerDescend
execute if score @s Height < @s DekuFlowerFloatEnd run tag @s remove DekuFlowerDescend

execute unless entity @s[tag=DekuFlowerDescend] run effect clear @s slow_falling
execute unless entity @s[tag=DekuFlowerDescend] run effect clear @s levitation

# Sounds

execute if score @s FlowerDescentTime matches 15.. run playsound minecraft:entity.item_frame.rotate_item block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 75 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 95 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 115 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1
execute if score @s FlowerDescentTime matches 135 run playsound minecraft:entity.ender_dragon.flap block @a ~ ~ ~ 0.5 1

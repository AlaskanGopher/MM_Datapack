#Constants
scoreboard objectives add STATIONARY_SPEED_THRESHOLD dummy
scoreboard objectives add DEKU_FLOWER_LAUNCH_HEIGHT dummy
scoreboard objectives add GOLD_DEKU_FLOWER_LAUNCH_HEIGHT dummy
scoreboard objectives add DEKU_FLOWER_DESCENT_SPEED dummy

execute unless entity @e[tag=globals] run summon marker 0 0 0 {Tags:["globals"]}
execute as @e[tag=globals,limit=1] run function majoras_mask:initialize_globals

#Counters
scoreboard objectives add DekuCrouchTimer dummy
scoreboard objectives add DekuFlowerDescentTime dummy
scoreboard objectives add DekuFlowerStationaryTime dummy

#Accessors
scoreboard objectives add Sneak minecraft.custom:sneak_time
scoreboard objectives add Walk minecraft.custom:walk_one_cm
scoreboard objectives add Sprint minecraft.custom:sprint_one_cm
scoreboard objectives add Height dummy
scoreboard objectives add XPos dummy
scoreboard objectives add ZPos dummy

#Results
scoreboard objectives add HorizontalSpeedSq dummy
scoreboard objectives add DeltaX dummy
scoreboard objectives add DeltaZ dummy
scoreboard objectives add DekuFlowerLaunchPeak dummy
scoreboard objectives add ExpectedDekuFlowerHeight dummy
scoreboard objectives add DekuFlowerFloatEnd dummy

#Math
scoreboard objectives add Accumulator dummy
scoreboard objectives add HorizontalSpeedSq dummy
scoreboard objectives add LastXPos dummy
scoreboard objectives add LastZPos dummy
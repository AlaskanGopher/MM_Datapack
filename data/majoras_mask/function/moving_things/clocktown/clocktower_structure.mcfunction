# WIP for Converting Clocktower Movement to Datapack
# NEW WORLD TOWER CENTER (0,144,0) when standing on top of the Tower.
# OLD WORLD TOWER CENTER (314, 93, -366) when standing on top of the Tower.

# DIFFERENCE (-314, 51, 366)                -314 51 366
# ROTATED 180 DEGREES (inverse signs)       180 0



# BEGIN

# structure block:  majora:clocktown/towerclock1 relative -12 -12 -5 @ 316 69 -369
# structure block:  majora:clocktown/towerclock1 relative -13 19 -7 @ 314 69 -369
# command:          /fill 318 88 -359 310 80 -340 air
# chain command:    /clone 299 32 -383 297 28 -383 313 58 -371

# 3 4tick REPEATERS

# structure block: majora:clocktown/towerclock2 relative -12 -12 -10 @ 316 69 -364
# structure block: majora:clocktown/towerball2 relative -4 19 -5 @ 314 69 -364

# 3 4tick REPEATERS

# structure block:  majora:clocktown/towerclock3 relative -8 -12 -10 @ 312 69 -364
# structure block:  majora:clocktown/towerball3 relative -2 19 -3 @ 312 69 -366

# 3 4tick REPEATERS

# structure block:  majora:clocktown/towerclock4 relative -12 -6 -8 @ 316 71 -366
# structure block:  majora:clocktown/towerclock4 relative -6 17 -5 @ 316 71 -364

# 3 4tick REPEATERS

# structure block:  majora:clocktown/towerclock5 relative -10 -2 -10 @ 314 71 -364
# structure block:  majora:clocktown/towerball5 relative -2 17 -5 @ 312 71 -364

# 3 4tick REPEATERS

# structure block:  majora:clocktown/towerballpeak relative -4 15 -1 @ 314 73 -368
# structure block:  majora:clocktown/towerclockpeak relative -10 -4 -8 @ 314 73 -366

# 4 4tick REPEATERS

# structure block:  majora:clocktown/towerclockturn relative -8 3 -13 @ 312 73 -364
# structure block:  majora:clocktown/towerballpeakremove relative -4 26 -5 @ 314 73 -364
# structure block:  majora:clocktown/towerballturn relative -6 17 4 @ 316 73 -364

# 4 4tick REPEATERS

# structure block:  majora:clocktown/towerballfinal relative -6 7 11 @ 316 73 -366
# structure block:  majora:clocktown/towerclockfinal1 relative -12 8 -9 @ 316 73 -368
# command:          /fill 312 100 -357 316 99 -356 air

# 3 4tick REPEATERS

# structure block:  majora:clocktown/towerclockfinal2 relative -9 6 -9 @ 313 75 -367

# 2 4tick REPEATERS

# command:          /fill 315 62 -371 313 58 -371 air

# END


# Auto-Generated

# scoreboard players set @e[tag=globals,limit=1] ClockTowerAnimationTimer 0

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 0 run place template majora:clocktown/towerclock1 10 108 8 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 0 run place template majora:clocktown/towerball1 13 139 10 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 0 run fill -5 130 -6 6 143 -26 air
# execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 0 run fill 4 139 7 -4 131 26 air
# execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 0 run clone -15 83 -17 -17 79 -17 -17 79 -17

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 24 run place template majora:clocktown/towerclock2 10 108 8 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 24 run place template majora:clocktown/towerball2 4 139 3 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 48 run place template majora:clocktown/towerclock3 10 108 8 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 48 run place template majora:clocktown/towerball3 4 139 3 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 72 run place template majora:clocktown/towerclock4 10 116 8 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 72 run place template majora:clocktown/towerball4 4 139 3 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 96 run place template majora:clocktown/towerclock5 10 120 8 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 96 run place template majora:clocktown/towerball5 4 139 3 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 120 run place template majora:clocktown/towerballpeak 4 139 3 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 120 run place template majora:clocktown/towerclockpeak 10 120 8 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 152 run place template majora:clocktown/towerballpeakremove 4 141 3 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 152 run place template majora:clocktown/towerclockturn 10 127 11 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 152 run place template majora:clocktown/towerballturn 4 141 -6 180

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 184 run place template majora:clocktown/towerballfinal 4 131 -11 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 184 run place template majora:clocktown/towerclockfinal1 10 132 11 180
execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 184 run fill 2 149 -8 -3 153 -11 air

execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 208 run place template majora:clocktown/towerclockfinal2 10 132 10 180

# execute if score @e[tag=globals,limit=1] ClockTowerAnimationTimer matches 224 run fill 1 113 -5 -1 109 -5 air

scoreboard players add @e[tag=globals,limit=1] ClockTowerAnimationTimer 1
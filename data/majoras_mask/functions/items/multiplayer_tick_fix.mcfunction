# _MTF_ = Multiplayer Tick Fix 1
# MOT = Multiplayer Off Tick 1
# _ on either side means it should never be accessed by anything else

execute as @e[type=marker, tag=globals] run scoreboard players add @s MOT 1
execute as @e[type=marker, tag=globals] if entity @s[scores={MOT=2..}] run scoreboard players set @s MOT 0

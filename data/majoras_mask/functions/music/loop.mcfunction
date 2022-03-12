# If song over, then loop
execute as @a if score @s MusicEnd matches ..0 as @s run function majoras_mask:music/loop_check
scoreboard players remove @a MusicEnd 1

# Failsafe command if Music was disabled (which shouldn't happen), but the scoreboard reaches 0 or less.
execute as @a if score @s MusicEnd matches ..0 run scoreboard players set @s MusicEnd 24000

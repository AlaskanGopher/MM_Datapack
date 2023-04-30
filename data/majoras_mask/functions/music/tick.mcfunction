scoreboard players remove @a MusicEnd 1
# If song over, then loop
execute as @a if score @s MusicEnd matches ..0 run function majoras_mask:music/loop_check

# Failsafe command if Music was disabled (which shouldn't happen), but the scoreboard reaches 0 or less.
execute as @a if score @s MusicEnd matches ..0 run scoreboard players set @s MusicEnd 24000

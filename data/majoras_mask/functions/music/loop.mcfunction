# If song over, then loop
execute if entity @a[scores={MusicEnd=..0}] as @s run function majoras_mask:music/loop_check
scoreboard players remove @a MusicEnd 1

# Failsafe command if Music was disabled (which shouldn't happen), but the scoreboard reaches 0 or less.
execute if entity @a[scores={MusicEnd=..0}] as @s run scoreboard players remove @a MusicEnd 24000

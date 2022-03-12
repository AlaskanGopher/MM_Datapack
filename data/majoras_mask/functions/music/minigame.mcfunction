stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:minigame music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 5760

execute if entity @s[tag=Orchestrated] run playsound minecraft:minigame music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 5760

tag @s add MusicMinigame
stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_finalhours music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2280

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_finalhours music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2280

tag @s add MusicClocktownFinalHours
stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_finalhours music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2260

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_finalhours music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2260

tag @s add MusicClocktownFinalHours
stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day1 music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 1220

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day1_orchestrated music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2320

tag @s add MusicClocktownDay1
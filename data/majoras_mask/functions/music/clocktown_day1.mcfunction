stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day1 music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 1140

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day1_orchestrated music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2340

tag @s add MusicClocktownDay1
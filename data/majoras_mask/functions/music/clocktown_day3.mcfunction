stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day3 music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 720

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day3 music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 720

tag @s add MusicClocktownDay3
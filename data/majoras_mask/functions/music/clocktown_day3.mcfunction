stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day3 music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 720

execute if entity @s[tag=Orchestrated] run playsound minecraft:clocktown_day3 music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 720

tag @s add MusicClocktownDay3
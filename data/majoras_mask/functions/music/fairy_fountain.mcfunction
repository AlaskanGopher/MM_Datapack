stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:fairy_fountain music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 9020

execute if entity @s[tag=Orchestrated] run playsound minecraft:fairy_fountain music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 9020

tag @s add MusicFairyFountain
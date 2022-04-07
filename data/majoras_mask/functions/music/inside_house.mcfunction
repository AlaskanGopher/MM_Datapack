stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:inside_house music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 9000

execute if entity @s[tag=Orchestrated] run playsound minecraft:inside_house music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 9000

tag @s add MusicInsideHouse
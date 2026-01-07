stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:shop music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 8940

execute if entity @s[tag=Orchestrated] run playsound minecraft:shop music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 8940

tag @s add MusicShop
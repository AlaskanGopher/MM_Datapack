stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:termina_field music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2560

execute if entity @s[tag=Orchestrated] run playsound minecraft:termina_field music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2560

tag @s add MusicTerminaField

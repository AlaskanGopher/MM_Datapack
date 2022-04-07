stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:song_of_healing music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2800

execute if entity @s[tag=Orchestrated] run playsound minecraft:song_of_healing music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2800

tag @s add MusicSongOfHealing
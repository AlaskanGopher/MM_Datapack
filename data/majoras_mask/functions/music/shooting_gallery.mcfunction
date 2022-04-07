stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:shooting_gallery music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 10340

execute if entity @s[tag=Orchestrated] run playsound minecraft:shooting_gallery music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 10340

tag @s add MusicShootingGallery
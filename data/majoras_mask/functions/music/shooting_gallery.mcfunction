stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:shooting_gallery music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 10340

execute if entity @s[tag=Orchestrated] run playsound minecraft:shooting_gallery music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 10340

tag @s add MusicShootingGallery
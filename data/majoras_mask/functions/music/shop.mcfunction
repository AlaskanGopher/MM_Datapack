stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:shop music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 8960

execute if entity @s[tag=Orchestrated] run playsound minecraft:shop music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 8960

tag @s add MusicShop
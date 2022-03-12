stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:astral_observatory music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 830

execute if entity @s[tag=Orchestrated] run playsound minecraft:astral_observatory_orchestrated music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 780

tag @s add MusicAstralObservatory

stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:underground music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 18780

execute if entity @s[tag=Orchestrated] run playsound minecraft:underground music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 18780

tag @s add MusicUnderground
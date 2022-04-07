stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:milk_bar music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 1200

execute if entity @s[tag=Orchestrated] run playsound minecraft:milk_bar music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 1200

tag @s add MusicMilkBar
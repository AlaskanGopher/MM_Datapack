stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:morning music @s ~ ~ ~ 10000000
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2920

execute if entity @s[tag=Orchestrated] run playsound minecraft:morning music @s ~ ~ ~ 10000000
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 2920

tag @s add MusicMorning
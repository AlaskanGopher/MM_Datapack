stopsound @s music

execute unless entity @s[tag=Orchestrated] run playsound minecraft:potion_shop music @s
execute unless entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 6980

execute if entity @s[tag=Orchestrated] run playsound minecraft:potion_shop music @s
execute if entity @s[tag=Orchestrated] run scoreboard players set @s MusicEnd 6980

tag @s add MusicPotionShop
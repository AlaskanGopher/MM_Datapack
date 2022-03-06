stopsound @s music
execute unless entity @s[tag="Orchestrated"] run playsound minecraft:astral_observatory music @s ~ ~ ~ 10000000
execute if entity @s[tag="Orchestrated"] run playsound minecraft:astral_observatory_orchestrated music @s ~ ~ ~ 10000000

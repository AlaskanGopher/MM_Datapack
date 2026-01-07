#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add TerminaMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] unless entity @a[tag=StopStalchildSpawn] run function ocarina_of_time:music/termina_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove TerminaMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/termina_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] unless entity @a[tag=ZeldaCastle2] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] unless entity @a[tag=ZeldaCastle2] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field
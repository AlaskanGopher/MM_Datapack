#Initialize
execute as @a[scores={Sneak=1..}] at @s unless entity @s[tag=DekuSpinCharge] run scoreboard players set @s Cooldown 0
execute as @a[scores={Sneak=1..}] at @s run tag @s add DekuSpinCharge

#Success? Add Effect
execute as @a[scores={Sneak=0,Cooldown=..5}] if entity @s[tag=DekuSpinCharge] run effect give @s minecraft:speed 1 1 true
execute as @a[scores={Sneak=0,Cooldown=..5}] at @s if entity @s[tag=DekuSpinCharge] run playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 10 0
execute as @a[scores={Sneak=0,Cooldown=..5}] at @s if entity @s[tag=DekuSpinCharge] run particle minecraft:sweep_attack ~ ~1 ~

execute as @a[scores={Sneak=0,Cooldown=..5}] at @s if entity @s[tag=DekuSpinCharge] run tag @s add DekuSpinActive
execute as @a[scores={Sneak=0,Cooldown=..5}] if entity @s[tag=DekuSpinCharge] run scoreboard players set @s Cooldown 6
execute as @a[scores={Sneak=0,Cooldown=..25}] at @s if entity @s[tag=DekuSpinActive] run particle minecraft:firework ~ ~1 ~ 

#Remove Tags
execute as @a[scores={Sneak=0,Cooldown=25..}] if entity @s[tag=DekuSpinActive] run tag @s remove DekuSpinCharge
execute as @a[scores={Sneak=0,Cooldown=25..}] if entity @s[tag=DekuSpinActive] run tag @s remove DekuSpinActive
execute as @a[scores={Sneak=0}] unless entity @s[tag=DekuSpinActive] run tag @s remove DekuSpinCharge

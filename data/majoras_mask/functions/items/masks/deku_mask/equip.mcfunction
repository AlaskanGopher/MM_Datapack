effect give @s minecraft:blindness 2 100 true
item replace entity @p armor.head with minecraft:oak_button{CustomModelData:2,tag:"deku_head",display:{Name:'{"text":"Deku Link","italic":false}'},DekuLink:1b} 1
tag @s add Wearing_Deku_Mask
scoreboard players set @s Cooldown 0

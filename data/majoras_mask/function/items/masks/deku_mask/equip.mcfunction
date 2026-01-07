effect give @s minecraft:blindness 2 100 true
item replace entity @p armor.head with minecraft:stone[minecraft:custom_model_data={strings:["deku_head"]},minecraft:custom_name={"text":"Deku Link","italic":false},minecraft:custom_data={DekuLink:1b,tag:"deku_head"}] 1
attribute @s minecraft:scale base set 0.84
tag @s add Wearing_Deku_Mask
scoreboard players set @s Cooldown 0

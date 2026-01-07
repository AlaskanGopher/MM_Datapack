#Deku Mask : Equip
execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data={strings:["deku_mask"]}] unless items entity @s armor.head minecraft:stone[minecraft:custom_model_data={strings:["deku_head"]},minecraft:custom_name={"text":"Deku Link","italic":false},minecraft:custom_data={DekuLink:1b,tag:"deku_head"}] run function majoras_mask:items/masks/deku_mask/equip

#Deku Spin
execute as @a[scores={Sneak=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/spin
execute as @a if entity @s[tag=DekuSpinCharge] run function majoras_mask:items/masks/deku_mask/spin

#Deku Water
#execute as @a[scores={DekuWater=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/water
#execute as @a if entity @s[tag=DekuWaterBounce] run function majoras_mask:items/masks/deku_mask/water

#Deku Mask : Remove
execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data={strings:["deku_mask"]}] if items entity @s armor.head minecraft:stone[minecraft:custom_model_data={strings:["deku_head"]},minecraft:custom_name={"text":"Deku Link","italic":false},minecraft:custom_data={DekuLink:1b,tag:"deku_head"}] run function majoras_mask:items/masks/deku_mask/remove

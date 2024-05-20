#Deku Mask : Equip
execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{DekuMask:1b}}}}] unless entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{DekuLink:1b}}}]}] run function majoras_mask:items/masks/deku_mask/equip

#Deku Spin
execute as @a[scores={Sneak=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/spin
execute as @a if entity @s[tag=DekuSpinCharge] run function majoras_mask:items/masks/deku_mask/spin

#Deku Water
#execute as @a[scores={DekuWater=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/water
#execute as @a if entity @s[tag=DekuWaterBounce] run function majoras_mask:items/masks/deku_mask/water

#Deku Mask : Remove
execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{DekuMask:1b}}}}] if entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{DekuLink:1b}}}]}] run function majoras_mask:items/masks/deku_mask/remove

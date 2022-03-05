#Deku Flower
function majoras_mask:items/deku_flower/deku_flower_launch

#Deku Mask
execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if entity @s[nbt={SelectedItem:{tag:{DekuMask:1b}}}] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{DekuLink:1b}}]}] run function majoras_mask:items/masks/deku_mask/equip
    #Deku Spin
execute as @a[scores={Sneak=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/spin
execute as @a if entity @s[tag=DekuSpinCharge] run function majoras_mask:items/masks/deku_mask/spin
    #Deku Water
execute as @a[scores={DekuWater=1..}] if entity @s[tag=Wearing_Deku_Mask] run function majoras_mask:items/masks/deku_mask/water
execute as @a if entity @s[tag=DekuWaterBounce] run function majoras_mask:items/masks/deku_mask/water

execute as @a[scores={UseItem=1..,Cooldown=40..}] at @s if entity @s[nbt={SelectedItem:{tag:{DekuMask:1b}}}] if entity @s[nbt={Inventory:[{Slot:103b,tag:{DekuLink:1b}}]}] run function majoras_mask:items/masks/deku_mask/remove

#Advance Cooldown
execute as @a run scoreboard players add @s Cooldown 1

#Use Item Reset
execute as @a[scores={UseItem=1..}] run scoreboard players set @s UseItem 0
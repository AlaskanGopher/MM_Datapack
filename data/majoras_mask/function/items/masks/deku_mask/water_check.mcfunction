
# Single block check
$execute if $(val) matches 0 as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^ minecraft:water \
    run return 1
$execute if $(val) matches 0 \
    run return

execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^ minecraft:water \
    run return 1
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-1 ^ minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-1 ^ minecraft:water \
    run return 1 

$execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^-$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-1 ^-$(val) minecraft:water \
    run return 1
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-1 ^-$(val) minecraft:water \
    run return 1 

$execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-1 ^$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-1 ^$(val) minecraft:water \
    run return 1 

# No water found
return fail
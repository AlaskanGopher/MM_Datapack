
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-0.2 ^ minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-0.2 ^ minecraft:water \
    run return 1 

$execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-0.2 ^-$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-0.2 ^-$(val) minecraft:water \
    run return 1
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-0.2 ^-$(val) minecraft:water \
    run return 1 

$execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-0.2 ^$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^$(val) ^-0.2 ^$(val) minecraft:water \
    run return 1 
$execute as @s at @s anchored feet rotated ~ 0 if block ^-$(val) ^-0.2 ^$(val) minecraft:water \
    run return 1 

# No water found
return fail

execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^ minecraft:water \
    run return 0
execute as @s at @s anchored feet rotated ~ 0 if block ^1 ^-1 ^ minecraft:water \
    run return 0 
execute as @s at @s anchored feet rotated ~ 0 if block ^-1 ^-1 ^ minecraft:water \
    run return 0 

execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^-1 minecraft:water \
    run return 0 
execute as @s at @s anchored feet rotated ~ 0 if block ^1 ^-1 ^-1 minecraft:water \
    run return 0
execute as @s at @s anchored feet rotated ~ 0 if block ^-1 ^-1 ^-1 minecraft:water \
    run return 0 

execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^1 minecraft:water \
    run return 0 
execute as @s at @s anchored feet rotated ~ 0 if block ^1 ^-1 ^1 minecraft:water \
    run return 0 
execute as @s at @s anchored feet rotated ~ 0 if block ^-1 ^-1 ^1 minecraft:water \
    run return 0 

return fail
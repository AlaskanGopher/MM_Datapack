
execute as @s at @s anchored feet rotated ~ 1 if block ^ ^-1 ^ minecraft:water \
    run return 1
execute as @s at @s anchored feet rotated ~ 1 if block ^1 ^-1 ^ minecraft:water \
    run return 1 
execute as @s at @s anchored feet rotated ~ 1 if block ^-1 ^-1 ^ minecraft:water \
    run return 1 

execute as @s at @s anchored feet rotated ~ 1 if block ^ ^-1 ^-1 minecraft:water \
    run return 1 
execute as @s at @s anchored feet rotated ~ 1 if block ^1 ^-1 ^-1 minecraft:water \
    run return 1
execute as @s at @s anchored feet rotated ~ 1 if block ^-1 ^-1 ^-1 minecraft:water \
    run return 1 

execute as @s at @s anchored feet rotated ~ 1 if block ^ ^-1 ^1 minecraft:water \
    run return 1 
execute as @s at @s anchored feet rotated ~ 1 if block ^1 ^-1 ^1 minecraft:water \
    run return 1 
execute as @s at @s anchored feet rotated ~ 1 if block ^-1 ^-1 ^1 minecraft:water \
    run return 1 

return fail
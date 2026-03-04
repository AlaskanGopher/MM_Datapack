
# Running as minecraft:interaction

$execute at @s on target if entity @s[tag=$(tag), distance=..$(max_distance)] run return 1

return fail

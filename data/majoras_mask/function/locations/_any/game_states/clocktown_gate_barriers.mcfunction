# East
execute if entity @e[tag=globals, tag=GatesOpen] run fill 54 102 8 54 108 12 air replace barrier
execute if entity @e[tag=globals, tag=!GatesOpen] run fill 54 102 8 54 108 12 barrier replace air

# North
execute if entity @e[tag=globals, tag=GatesOpen] run fill -4 108 -50 0 110 -50 air replace barrier
execute if entity @e[tag=globals, tag=!GatesOpen] run fill -4 108 -50 0 110 -50 barrier replace air

# South
execute if entity @e[tag=globals, tag=GatesOpen] run fill 2 100 57 -2 105 57 air replace barrier
execute if entity @e[tag=globals, tag=!GatesOpen] run fill 2 100 57 -2 105 57 barrier replace air

# West
execute if entity @e[tag=globals, tag=GatesOpen] run fill -52 107 -3 -52 111 1 air replace barrier
execute if entity @e[tag=globals, tag=!GatesOpen] run fill -52 107 -3 -52 111 1 barrier replace air


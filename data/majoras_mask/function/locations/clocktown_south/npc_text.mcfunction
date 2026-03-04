
# Running as minecraft:interaction

execute at @s on target unless entity @s[distance=..6] run return 0

# Brac
execute if entity @s[tag=BracInteraction] if function majoras_mask:locations/clocktown_south/npcs/brac/text/repeating \
    run return 0
   
# Mack
execute if entity @s[tag=MackInteraction] if function majoras_mask:locations/clocktown_south/npcs/mack/text/repeating \
    run return 0

# Apprentice
execute if entity @s[tag=ApprenticeInteraction] if function majoras_mask:locations/clocktown_south/npcs/apprentice/text/repeating \
    run return 0

# Bremor
execute if entity @s[tag=BremorInteraction] if function majoras_mask:locations/clocktown_south/npcs/bremor/text/repeating \
    run return 0

# South Gate Guard
execute if entity @s[tag=SouthClocktownSoldierInteraction] if entity @e[tag=globals,tag=GatesOpen] if function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier/text/repeating \
    run return 0

### Player Specific Text ###

## If interacting player is within distance ##
execute store result score @s WorkingVariable \
    run function majoras_mask:bool/interacting_player_distance {max_distance: 6}

## If player is human ##
execute store result score @s WorkingVariable2 \
    run function majoras_mask:bool/interacting_player_attributes {tag: NoTransformationMask, max_distance: 6}

# Guru Guru
execute if entity @s[tag=OGuru_GuruInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/guru_guru/text/no_bremon \
    run return 0

execute if entity @s[tag=OGuru_GuruInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/guru_guru/text/has_bremon \
    run return 0

execute if entity @s[tag=OGuru_GuruInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/guru_guru/text/repeating_normal \
    run return 0

# South Gate Guard
execute if entity @s[tag=SouthClocktownSoldierInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier/text/normal \
    run return 0

## If player is Deku ##
execute store result score @s WorkingVariable2 \
    run function majoras_mask:bool/interacting_player_attributes {tag: Wearing_Deku_Mask, max_distance: 6}

# Guru Guru
execute if entity @s[tag=OGuru_GuruInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/guru_guru/text/deku \
    run return 0

execute if entity @s[tag=OGuru_GuruInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/guru_guru/text/repeating_deku \
    run return 0

# South Gate Guard
execute if entity @s[tag=SouthClocktownSoldierInteraction] if score @s WorkingVariable2 matches 1.. if function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier/text/deku \
    run return 0


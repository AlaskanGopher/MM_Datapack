# Bossbar Display | day12 is 12hour base clock

execute if score @s DayCycle matches 1 \
    run function majoras_mask:moving_things/day_cycle/display_day {title: "First", subtitle1: "72", subtitle2: "60", day: "1st"}
execute if score @s DayCycle matches 1 \
    run return 0

execute if score @s DayCycle matches 2 \
    run function majoras_mask:moving_things/day_cycle/display_day {title: "Second", subtitle1: "48", subtitle2: "36", day: "2nd"}
execute if score @s DayCycle matches 2 \
    run return 0

execute if score @s DayCycle matches 3 if score @s Time matches ..17999 \
    run function majoras_mask:moving_things/day_cycle/display_day {title: "Final", subtitle1: "24", subtitle2: "12", day: "Final"}
execute if score @s DayCycle matches 3 if score @s Time matches ..17999 \
    run return 0


function majoras_mask:moving_things/day_cycle/display_final


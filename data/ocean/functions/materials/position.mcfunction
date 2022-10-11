scoreboard players set $x_pos ocean.materials.spawn 2
scoreboard players set $z_pos ocean.materials.spawn 2

function ocean:math/random

scoreboard players operation $x_pos ocean.materials.spawn += $rand_40 ocean.math
scoreboard players remove $x_pos ocean.materials.spawn 20

function ocean:math/random

scoreboard players operation $z_pos ocean.materials.spawn += $rand_40 ocean.math
scoreboard players remove $z_pos ocean.materials.spawn 20

summon marker 0 62 0 {Tags:["ocean.materials.spawn"]}
execute as @e[type=marker,tag=ocean.materials.spawn,limit=1] run function ocean:materials/spawn

scoreboard players reset $x_pos ocean.materials.spawn
scoreboard players reset $z_pos ocean.materials.spawn
execute if score $seed ocean.math matches 0 store result score $seed ocean.math run data get entity @e[limit=1,sort=random] UUID[1]
execute if score $rng ocean.math matches 0 store result score $rng ocean.math run scoreboard players get $seed ocean.math

scoreboard players add $iteration ocean.math 1
scoreboard players operation $rng ocean.math *= $multiplier ocean.constants
scoreboard players operation $rng ocean.math += $increment ocean.constants
scoreboard players operation $rng ocean.math += $iteration ocean.math

execute store result score $rand_2 ocean.math run scoreboard players get $rng ocean.math
scoreboard players operation $rand_2 ocean.math %= $2 ocean.constants

execute store result score $rand_10 ocean.math run scoreboard players get $rng ocean.math
scoreboard players operation $rand_10 ocean.math %= $10 ocean.constants

execute store result score $rand_26 ocean.math run scoreboard players get $rng ocean.math
scoreboard players operation $rand_26 ocean.math %= $26 ocean.constants

execute store result score $rand_40 ocean.math run scoreboard players get $rng ocean.math
scoreboard players operation $rand_40 ocean.math %= $40 ocean.constants

execute store result score $rand_100 ocean.math run scoreboard players get $rng ocean.math
scoreboard players operation $rand_100 ocean.math %= $100 ocean.constants
function ocean:math/random

scoreboard players operation $cooldown ocean.materials.timer = $rand_10 ocean.math
scoreboard players add $cooldown ocean.materials.timer 5

execute in ocean:ocean run function ocean:materials/position
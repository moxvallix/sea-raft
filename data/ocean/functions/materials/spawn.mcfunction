# tellraw @a [{"text":"Spawning at: "},{"score":{"name":"$x_pos","objective":"ocean.materials.spawn"}},{"text":" ~ "},{"score":{"name":"$z_pos","objective":"ocean.materials.spawn"}}]

execute store result entity @s Pos[0] double 1 run scoreboard players get $x_pos ocean.materials.spawn
execute store result entity @s Pos[2] double 1 run scoreboard players get $z_pos ocean.materials.spawn
execute at @s as @s run function ocean:materials/bottom

execute at @s run loot spawn ~ ~ ~ loot ocean:materials/spawn

kill @s
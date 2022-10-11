scoreboard players reset @s ocean.reset.nomad
kill @e[tag=ocean.nomad]
execute positioned -348 63 -284 if entity @s[distance=..20] run function ocean:debug/villagers/nomad
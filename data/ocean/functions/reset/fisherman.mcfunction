scoreboard players reset @s ocean.reset.fisherman
kill @e[tag=ocean.fisherman]
execute positioned -349 57 295 if entity @s[distance=..20] run function ocean:debug/villagers/fisherman
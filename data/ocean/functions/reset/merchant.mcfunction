scoreboard players reset @s ocean.reset.merchant
kill @e[tag=ocean.merchant]
execute positioned 185 66 -421 if entity @s[distance=..20] run function ocean:debug/villagers/merchant
tellraw @a "Ocean Pack - Load"
datapack disable "vanilla"
schedule clear ocean:loop
function ocean:objectives
execute unless score $init ocean.config matches 0.. run function ocean:init
function ocean:loop

# REMINDER: Add /trigger ocean.unstuck
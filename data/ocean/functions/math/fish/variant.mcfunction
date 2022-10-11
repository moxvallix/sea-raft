# Tropical fish variant logic, credit to McStacker
# pattern_colour = floor(variant / 16777216)
# mod1 = mod(variant; 16777216)
# base_colour = floor(mod1 / 65536)
# mod2 = mod(mod1; 65536)
# pattern = floor(mod2 / 256)
# mod3 = mod(mod2; 256)
# size = mod3
#
# This code never ended up being used, however I have kept it in as a curio.
# Not to be evaluated.

scoreboard players operation $pattern_colour ocean.math.fish = $variant ocean.math.fish
scoreboard players operation $pattern_colour ocean.math.fish /= $16777216 ocean.constants

scoreboard players operation $_mod1 ocean.math.fish = $variant ocean.math.fish
scoreboard players operation $_mod1 ocean.math.fish %= $16777216 ocean.constants

scoreboard players operation $base_colour ocean.math.fish = $_mod1 ocean.math.fish
scoreboard players operation $base_colour ocean.math.fish /= $65536 ocean.constants

scoreboard players operation $_mod2 ocean.math.fish = $_mod1 ocean.math.fish
scoreboard players operation $_mod2 ocean.math.fish %= $65536 ocean.constants

scoreboard players operation $pattern ocean.math.fish = $_mod2 ocean.math.fish
scoreboard players operation $pattern ocean.math.fish /= $256 ocean.constants

scoreboard players operation $size ocean.math.fish = $_mod2 ocean.math.fish
scoreboard players operation $size ocean.math.fish %= $256 ocean.constants

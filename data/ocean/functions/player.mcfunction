execute as @s unless score @s ocean.player.init matches 1.. run function ocean:player/init
execute as @s[scores={ocean.player.death=1..}] run function ocean:death

execute store result score @s ocean.player.slot run data get entity @s SelectedItemSlot

execute store result score @s ocean.player.position.x run data get entity @s Pos[0]
execute store result score @s ocean.player.position.z run data get entity @s Pos[2]

scoreboard players set @s ocean.player.sneak 0

scoreboard players enable @s ocean.reset.nomad
scoreboard players enable @s ocean.reset.merchant
scoreboard players enable @s ocean.reset.fisherman

scoreboard players enable @s ocean.finish

function ocean:materials/message

execute as @s[scores={ocean.reset.fisherman=1..}] run function ocean:reset/fisherman
execute as @s[scores={ocean.reset.merchant=1..}] run function ocean:reset/merchant
execute as @s[scores={ocean.reset.nomad=1..}] run function ocean:reset/nomad
execute as @s[scores={ocean.player.fished=1..}] run function ocean:player/fished

execute if predicate ocean:needs_flint run item modify entity @s weapon.mainhand ocean:flint_and_steel

execute if predicate ocean:fishing/baited_cast run function ocean:player/bait

execute as @s[scores={ocean.finish=1..}] run function ocean:gameplay/finish

scoreboard players reset @s ocean.player.fishing
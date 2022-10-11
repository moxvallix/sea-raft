execute if predicate ocean:messages/player/message_1 run scoreboard players set $message ocean.materials.misc 1
execute if predicate ocean:messages/player/message_2 run function ocean:materials/messages/message_1
execute if predicate ocean:messages/player/message_3 run function ocean:materials/messages/message_2
execute if predicate ocean:messages/player/message_end run function ocean:materials/messages/message_3
execute if predicate ocean:messages/player/bait run function ocean:materials/messages/bait
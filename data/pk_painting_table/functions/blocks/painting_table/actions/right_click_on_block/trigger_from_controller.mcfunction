#> pk_painting_table:blocks/painting_table/actions/right_click_on_block/trigger_from_controller
# Update the found block and its relative controller

execute if entity @s[tag=!pk.custom_block.in_use] run function pk_painting_table:blocks/painting_table/actions/right_click_on_block/player_start_using_block
execute if entity @s[tag=pk.custom_block.in_use] run function pk_painting_table:blocks/painting_table/actions/right_click_on_block/block_already_in_use
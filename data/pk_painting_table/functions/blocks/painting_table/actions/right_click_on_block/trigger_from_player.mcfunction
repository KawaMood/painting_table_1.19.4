#> pk_painting_table:blocks/painting_table/actions/right_click_on_block/trigger_from_player
# @within advancement pk_painting_table:interactions/clicked_painting_table

advancement revoke @s only pk_painting_table:interactions/clicked_painting_table

# Increment and set interaction.id score
scoreboard players add $next pk.custom_block.interaction.id 1
scoreboard players operation @s pk.custom_block.interaction.id = $next pk.custom_block.interaction.id

# Search the clicked block
tag @s add pk.temp.current
function pk_painting_table:blocks/painting_table/actions/right_click_on_block/search_block/start
tag @s remove pk.temp.current
#> pk_painting_table:blocks/painting_table/use/controller_check_content_set_user_scores

# Player had output items on its cursor during previous tick
scoreboard players operation @s pk.pa_ta.has_output_items_prev = @s pk.pa_ta.has_output_items
scoreboard players operation $player_has_output_items_prev pk.temp = @s pk.pa_ta.has_output_items_prev

# Player has output items on its cursor
execute store result score $player_has_output_items pk.temp run clear @s player_head{pkOutput:1b} 0
scoreboard players operation @s pk.pa_ta.has_output_items = $player_has_output_items pk.temp

# Player has GUI items in cursor or inventory (and clear)
execute store result score $player_has_gui_items pk.temp run clear @s #pk_painting_table:gui{pkGUI:1b}
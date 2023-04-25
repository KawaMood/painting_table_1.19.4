#> pk_painting_table:blocks/painting_table/use/controller_check_content

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage and scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Set storage
data modify storage pk.common:data Temp.Items set from block ~ ~ ~ Items
data modify storage pk.common:data Temp.GUI.Items set value []

# Reset scores
scoreboard players set $block_has_correct_input_items pk.temp 0
scoreboard players set $block_has_output_items pk.temp 0
scoreboard players set $player_has_output_items_prev pk.temp 0
scoreboard players set $player_has_output_items pk.temp 0
scoreboard players set $player_has_gui_items pk.temp 0
scoreboard players set $skip_check pk.temp 0

# Set scores
# - Block has correct input items
# - Writable book
execute if data storage pk.common:data Temp{Items:[{Slot:10b,id:"minecraft:red_dye"},{Slot:11b,id:"minecraft:yellow_dye"},{Slot:12b,id:"minecraft:blue_dye"},{Slot:13b,id:"minecraft:quartz_block"},{Slot:14b,id:"minecraft:writable_book"}]} run scoreboard players set $block_has_correct_input_items pk.temp 1
# - Block has correct output items
execute store result score $block_has_output_items pk.temp run data get storage pk.common:data Temp.Items[{Slot:16b,tag:{pkOutput:1b}}]
# - Set scores from user
execute as @a[tag=pk.temp.current,limit=1] run function pk_painting_table:blocks/painting_table/use/controller_check_content_set_user_scores
# - Set current block container GUI length score (used futher to check if a GUI item has been dropped from the container block with the drop key)
data modify storage pk.common:data Temp.GUI.Items append from storage pk.common:data Temp.Items[{tag:{pkGUI:1b}}]
execute store result score $block_current_gui_length pk.temp run data get storage pk.common:data Temp.GUI.Items

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Events:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Player split output items (output items both in player cursor and block) -> clear player (the reset of output amount is done further)
execute if score $block_has_output_items pk.temp matches 1.. if score $player_has_output_items pk.temp matches 1.. run function pk_painting_table:blocks/painting_table/use/player_split_output

# Player took all output items -> remove necessary inputs items + check if no bad item placed in output
execute if score $skip_check pk.temp matches 0 if score $block_has_correct_input_items pk.temp matches 1 if score $block_has_output_items pk.temp matches 0 if score $player_has_output_items pk.temp matches 1.. run function pk_painting_table:blocks/painting_table/use/player_take_output

# Player placed item in the output slot
# - Tried to place back output items in the output slot after having clicking them
execute if score $skip_check pk.temp matches 0 if score $block_has_correct_input_items pk.temp matches 0 if score $player_has_output_items_prev pk.temp matches 1.. if score $block_has_output_items pk.temp matches 1.. run function pk_painting_table:blocks/painting_table/use/player_placed_output
# - Regular items
execute if score $skip_check pk.temp matches 0 if score $block_has_correct_input_items pk.temp matches 0 if score $block_has_output_items pk.temp matches 0 if score $player_has_output_items_prev pk.temp matches 0 if data storage pk.common:data Temp.Items[{Slot:16b}] run function pk_painting_table:blocks/painting_table/use/player_placed_output

# Player dropped GUI items from the block container using the drop key -> reset the GUI items
execute if score $skip_check pk.temp matches 0 unless score $block_current_gui_length pk.temp = $pk.pa_ta.painting_table.gui.length pk.value run function pk_painting_table:blocks/painting_table/use/player_dropped_gui_item

# Player clicked GUI item -> clear it, store GUI slots to search if no bad item placed in GUI, reset the GUI items
execute if score $skip_check pk.temp matches 0 if score $player_has_gui_items pk.temp matches 1.. run function pk_painting_table:blocks/painting_table/use/player_clicked_gui_item

# Block has correct input items -> set relative output items depending on the limiting input items
execute if score $skip_check pk.temp matches 0 if score $block_has_correct_input_items pk.temp matches 1 run function pk_painting_table:blocks/painting_table/use/block_update_output

# Remove the output if necessary input items are missing
execute if score $block_has_correct_input_items pk.temp matches 0 run data remove block ~ ~ ~ Items[{Slot:16b}]
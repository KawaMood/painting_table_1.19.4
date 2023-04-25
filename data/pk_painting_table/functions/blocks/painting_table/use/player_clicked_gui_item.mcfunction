#> pk_painting_table:blocks/painting_table/use/player_clicked_gui_item 

# Skip other checks
scoreboard players set $skip_check pk.temp 1

# Check if the player set an item in a GUI slot
data remove storage pk.common:data Temp.Search
data modify storage pk.common:data Temp.Search.Items set from storage pk.common:data Temp.Items
data remove storage pk.common:data Temp.Search.Items[{tag:{pkGUI:1b}}]
data remove storage pk.common:data Temp.Search.Items[{Slot:10b}]
data remove storage pk.common:data Temp.Search.Items[{Slot:11b}]
data remove storage pk.common:data Temp.Search.Items[{Slot:12b}]
data remove storage pk.common:data Temp.Search.Items[{Slot:13b}]
data remove storage pk.common:data Temp.Search.Items[{Slot:14b}]
data remove storage pk.common:data Temp.Search.Items[{Slot:16b}]
execute if data storage pk.common:data Temp.Search.Items[{}] run function pk_painting_table:blocks/painting_table/use/player_replaced_gui_item

# Reset GUI
data modify block ~ ~ ~ Items append from storage pk.pa_ta:data Block.PaintingTable.GUI[]

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " clicked GUI item from Painting Table"}]
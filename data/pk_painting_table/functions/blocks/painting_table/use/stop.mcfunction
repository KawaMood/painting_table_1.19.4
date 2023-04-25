#> pk_painting_table:blocks/painting_table/use/stop

# Check if the user is still logged in and is in the same dimension
execute store success score $player_found pk.temp if entity @a[tag=pk.temp.current,limit=1,distance=0..]

# Give remaining input items to the relative player, or on the block if user disappeared
data remove storage pk.common:data Temp.Inputs
data modify storage pk.common:data Temp.Inputs set value []
data modify storage pk.common:data Temp.Inputs append from storage pk.common:data Temp.Items[{Slot:10b}]
data modify storage pk.common:data Temp.Inputs append from storage pk.common:data Temp.Items[{Slot:11b}]
data modify storage pk.common:data Temp.Inputs append from storage pk.common:data Temp.Items[{Slot:12b}]
data modify storage pk.common:data Temp.Inputs append from storage pk.common:data Temp.Items[{Slot:13b}]
data modify storage pk.common:data Temp.Inputs append from storage pk.common:data Temp.Items[{Slot:14b}]
execute if score $player_found pk.temp matches 1 if data storage pk.common:data Temp.Inputs[{}] at @a[tag=pk.temp.current,limit=1,distance=0..] run function pk_painting_table:blocks/painting_table/use/block_drop_input_items_recursive
execute if score $player_found pk.temp matches 0 if data storage pk.common:data Temp.Inputs[{}] positioned ~ ~1 ~ run function pk_painting_table:blocks/painting_table/use/block_drop_input_items_recursive

# Remove tag
tag @s remove pk.custom_block.in_use

# Force the block to empty
setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"italic":false,"text":"Painting Table"}',Items:[{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{pkCustomBlock:1b,pkGUI:1b,pkPaintingTable:1b,pkInUse:0b},Slot:0b}]}

# Stop the default sound
stopsound @a[distance=..30] block block.barrel.close

# Debug logs
execute if score $logs.datapack.pa_ta pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current,limit=1]","color": "gray"},{"text": " closed Painting Table at ["},{"nbt":"x","block":"~ ~ ~"},{"text": ","},{"nbt":"y","block":"~ ~ ~"},{"text": ","},{"nbt":"z","block":"~ ~ ~"},{"text": "]"}]
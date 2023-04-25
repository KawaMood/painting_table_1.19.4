#> pk_painting_table:blocks/painting_table/use/player_dropped_gui_item

data modify block ~ ~ ~ Items append from storage pk.pa_ta:data Block.PaintingTable.GUI[]
execute at @a[tag=pk.temp.current,limit=1] run kill @e[type=item,nbt={Item:{tag:{pkGUI:1b}}},distance=..2]
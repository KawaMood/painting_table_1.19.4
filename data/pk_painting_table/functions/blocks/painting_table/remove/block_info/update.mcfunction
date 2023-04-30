#> pk_painting_table:blocks/painting_table/remove/block_info/update
# Remove the current Painting Table from the pk.pa_ta:data Blocks.PaintingTables storage

data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set from storage pk.pa_ta:data Blocks.PaintingTables
data modify storage pk.common:data Temp.Array.New set value []
function pk_painting_table:blocks/painting_table/remove/block_info/update_recursive

data remove storage pk.pa_ta:data Blocks.PaintingTables
data modify storage pk.pa_ta:data Blocks.PaintingTables set from storage pk.common:data Temp.Array.New